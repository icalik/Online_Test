using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Test
{
    public partial class AddQuestion : System.Web.UI.Page
    {
        string id, test_adi, konu_id, soru_sayisi, test_suresi, ekleyen_id, son_eklenen_id;
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

                int soruSayisi = Convert.ToInt32(soru_sayisi);

                cerceve = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                cerceve.ID = "cerceve";

                for (int i = 1; i <= soruSayisi; i++)
                {

                    soru_ekle(i);
                }

                
            }

        }

        
        private void soru_ekle(int soru_sayisi)
        {
            
            System.Web.UI.HtmlControls.HtmlGenericControl soru = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            soru.ID = "panel" + soru_sayisi.ToString();
            soru.Style.Add(HtmlTextWriterStyle.BackgroundColor, "Yellow");
            soru.InnerHtml = 
                "Soru "+ soru_sayisi +"<input id=soru" + soru_sayisi + 
                "> <br> 1.Cevap <input id=cevap1"+soru_sayisi+
                "> <br>  2.Cevap <input id=cevap2"+soru_sayisi+
                "> <br>  3.Cevap <input id=cevap3"+soru_sayisi+
                "> <br>  4.Cevap <input id=cevap4" + soru_sayisi+
                "> <br>  Doğru Cevap <input id=cevap5" +soru_sayisi+
                "> <br>";
            cerceve.Controls.Add(soru);
            Controls.Add(cerceve);
           
            
        }
        
    }
}