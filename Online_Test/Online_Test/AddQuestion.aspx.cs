using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Online_Test
{
    public partial class AddQuestion : System.Web.UI.Page
    {
        string id, test_id, test_adi, konu_id, soru_sayisi, ekleyen_id;
        int SoruBitis,sayac;
      

        public System.Web.UI.HtmlControls.HtmlGenericControl cerceve;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Session["id"].ToString();
            // string ad_gelen = Convert.ToString(txt_profil_ad.Text);
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {


                string q = "select top 1 * from Testler  order by test_id Desc";
                SqlCommand com = new SqlCommand(q, con);

                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    test_id = (dr["test_id"].ToString());
                    test_adi = (dr["test_adi"].ToString());
                    konu_id = (dr["konu_id"].ToString());
                    soru_sayisi = (dr["soru_sayisi"].ToString());
                    ekleyen_id = (dr["ekleyen_id"].ToString());

                }

                lbl_test_adi.Text = "Soruların eklendiği testin adı : " + test_adi;
                

                 SoruBitis = Convert.ToInt32(Session["SoruSayac"]);
                sayac = Convert.ToInt32(Session["sayac"]);
                lbl_baslik.Text = sayac + ". Soruyu Ekle";
                

                
            }

        }

        protected void btn_gonder_Click(object sender, EventArgs e)
        {
            
            if (sayac <= SoruBitis)
            {

                string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(baglanti);
                con.Open();

                string soru = txt_soru.Text;
                string dogru_cevap = txt_dogru.Text;
                string cevap2 = txt_cevap2.Text;
                string cevap3 = txt_cevap3.Text;
                string cevap4 = txt_cevap4.Text;
                string cevap5 = txt_cevap5.Text;

                if (con.State == System.Data.ConnectionState.Open)
                {
                    // son soru kontrolü
                    if (sayac == SoruBitis)
                    {
                        string sorgu = "insert into Sorular(test_id,soru,dogru_cevap,cevap2,cevap3,cevap4,cevap5) values ('" + test_id + "', '" + soru + "', '" + dogru_cevap + "', '" + cevap2 + "', '" + cevap3 + "', '" + cevap4 + "', '" + cevap5 + "')";
                        SqlCommand cmd = new SqlCommand(sorgu, con);
                        cmd.ExecuteNonQuery();
                        lbl_hata.Text = "Soru ekleme işlemi başarıyla tamamlandı...";
                        HtmlMeta meta = new HtmlMeta();
                        meta.HttpEquiv = "Refresh";
                        meta.Content = "2;url=User.aspx";
                        this.Page.Controls.Add(meta);
                    }
                    else
                    {
                        string sorgu = "insert into Sorular(test_id,soru,dogru_cevap,cevap2,cevap3,cevap4,cevap5) values ('" + test_id + "', '" + soru + "', '" + dogru_cevap + "', '" + cevap2 + "', '" + cevap3 + "', '" + cevap4 + "', '" + cevap5 + "')";
                        SqlCommand cmd = new SqlCommand(sorgu, con);
                        cmd.ExecuteNonQuery();
                        lbl_hata.Text = "Soru " + sayac + "Eklendi...";
                        HtmlMeta meta = new HtmlMeta();
                        meta.HttpEquiv = "Refresh";
                        meta.Content = "1;url=AddQuestion.aspx";
                        this.Page.Controls.Add(meta);

                    }

                }
               
                Session["sayac"] = sayac + 1;
               
            }
            else
            {
                lbl_hata.Text = "sayaç hatası oluştu";
            }
        }


    }
   
}