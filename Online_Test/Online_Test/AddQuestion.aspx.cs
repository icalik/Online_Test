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
        string id, test_adi, konu_id, soru_sayisi, test_suresi, ekleyen_id, son_eklenen_id;
        int SoruBitis;
      

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
                    test_adi = (dr["test_adi"].ToString());
                    konu_id = (dr["konu_id"].ToString());
                    soru_sayisi = (dr["soru_sayisi"].ToString());
                    test_suresi = (dr["test_suresi"].ToString());
                    ekleyen_id = (dr["ekleyen_id"].ToString());

                }
                lbl_icerik.Text = "Test adi = " + test_adi + "<br>" +
                                    "konu id = " + konu_id + "<br>" +
                                    "soru sayisi = " + soru_sayisi + "<br>" +
                                    "Test süresi = " + test_suresi + "<br>" +
                                    "Ekleyen id = " + ekleyen_id;

                 SoruBitis = Convert.ToInt32(Session["SoruSayac"]);
                
                

                
            }

        }

        protected void btn_gonder_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["sayac"]) < SoruBitis)
            {
                
                HtmlMeta meta = new HtmlMeta();
                meta.HttpEquiv = "Refresh";
                meta.Content = "1;url=AddQuestion.aspx";
                lbl_soru_hata.Text = "Tamam";
                Page.Controls.Add(meta);
                Session["sayac"] = Convert.ToInt32(Session["sayac"]) + 1;
            }
            else
            {
                lbl_soru_hata.Text = "Test ekleme işlemi bitti";
            }
        }


    }
   
}