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
    public partial class User : System.Web.UI.Page
    {
        string id;
        private string ad;
        private string soyad;

        protected void Page_Load(object sender, EventArgs e)
        {

            //

            id = Session["id"].ToString();
            SqlDataSource1.SelectCommand = "select k.konu_adi,t.test_adi,t.soru_sayisi, count(durum) as dogru_sayisi,((CAST(count(durum) AS float)/t.soru_sayisi)*100) as puan from Cozulen_Test ct, Testler t, Konular k where ct.cozen_id = " + id + " and ct.test_id = t.test_id and t.konu_id = k.konu_id and durum = 1 group by t.test_adi,k.konu_adi,t.soru_sayisi";

            //

            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                try
                {
                    // Burası Ad soyad doldurmak için
                    id = Session["id"].ToString();
                    string q = "select * from Uyeler where uye_id=" + id + "";

                    SqlCommand com = new SqlCommand(q, con);
                    SqlDataReader dr = com.ExecuteReader();

                    while (dr.Read())
                    {
                        lbl_ad.Text =Convert.ToString(dr["ad"] + " " + Convert.ToString(dr["soyad"]));
                        ad = Convert.ToString(dr["ad"]).Trim();
                        soyad = Convert.ToString(dr["soyad"]).Trim();
                        pf.ImageUrl = Page.ResolveUrl("~/fotograf/" + Convert.ToString(dr["profil_foto"]).Trim());
                        Image1.ImageUrl = Page.ResolveUrl("~/fotograf/" + Convert.ToString(dr["profil_foto"]).Trim());

                    }
                    dr.Close();

                    // Burası son eklediği konuları  doldurmak için

                    string konusorgu = "SELECT TOP 10 [konu_id],[konu_adi],[ekleyen] FROM[dbo].[Konular] where ekleyen = '" + id + "' order by konu_adi asc";

                    SqlCommand com1 = new SqlCommand(konusorgu, con);
                    SqlDataReader dr1 = com1.ExecuteReader();

                    while (dr1.Read())
                    {
                        literal_konu.Text = literal_konu.Text + "• " + dr1["konu_adi"] + "<br/>";
                    }
                    dr1.Close();


                    // Burası son eklediği testleri doldurmak için

                    string Testsorgu = "SELECT TOP 10 [test_adi] FROM [dbo].[Testler] where ekleyen_id = '" + id + "' order by test_id desc";

                    SqlCommand com2 = new SqlCommand(Testsorgu, con);
                    SqlDataReader dr2 = com2.ExecuteReader();

                    while (dr2.Read())
                    {
                        literal_test.Text = literal_test.Text + "• " + dr2["test_adi"] + "<br/>";
                    }
                    dr2.Close();

                }
                catch (Exception)
                {
                    lbl_ad.Text = "Session Yok Giris Yapiniz!";
                }
                
            }
        }

        

        protected void btn_profil_duzenle_kaydet_Click(object sender, EventArgs e)
        {
            id = Session["id"].ToString();
            // string ad_gelen = Convert.ToString(txt_profil_ad.Text);
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                ad = txt_ad.Text;
                soyad = txt_soyad.Text;
                try
                {

                    string q2 = "update Uyeler set ad='" + ad + "', soyad='" + soyad + "', parola='" + txt_parola1.Text + "' where uye_id='" + id + "'";

                    SqlCommand com1 = new SqlCommand(q2, con);
                    com1.ExecuteNonQuery();
                    lbl_uyari.Text = "Kaydedildi!";
                    Session["ad"] = txt_ad.Text;
                    HtmlMeta meta = new HtmlMeta();
                    meta.HttpEquiv = "Refresh";
                    meta.Content = "0;url=User.aspx";
                    this.Page.Controls.Add(meta);
                   

                }
                catch (Exception)
                {

                    lbl_uyari.Text = "Hata oluştu." + e.ToString();
                }
            }
        }

       
    }
}