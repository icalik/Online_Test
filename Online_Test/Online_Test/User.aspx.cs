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
    public partial class User : System.Web.UI.Page
    {
        string id;
        private string ad;
        private string soyad;
        private string konu_ad;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                try
                {
                    id = Session["id"].ToString();
                    string q = "select * from Uyeler where uye_id=" + id + "";

                    SqlCommand com = new SqlCommand(q, con);
                    SqlDataReader dr = com.ExecuteReader();

                    while (dr.Read())
                    {
                        lbl_ad.Text = "Hoşgeldin " + Convert.ToString(dr["ad"]);
                        /* lbl_profil_ad.Text = Convert.ToString(dr["ad"]);
                         lbl_profil_soyad.Text = Convert.ToString(dr["soyad"]);
                         lbl_profil_mail.Text = Convert.ToString(dr["mail"]);
                         lbl_profil_yetki.Text = Convert.ToString(dr["yetki"]);
                         lbl_profil_pfoto.Text = Convert.ToString(dr["profil_foto"]);
                         lbl_profil_uyeolmatarihi.Text = Convert.ToString(dr["uye_olma_tarihi"]);
                         */
                        ad = Convert.ToString(dr["ad"]).Trim();
                        soyad = Convert.ToString(dr["soyad"]).Trim();


                    }
                    dr.Close();
                }
                catch (Exception)
                {
                    lbl_ad.Text = "Session Yok Giris Yapiniz!";
                    lbl_id.Text = "";

                }




            }
        }

        protected void btn_profil_duzenle_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProfile.aspx");
        }

        protected void btn_konu_ekle_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddTopic.aspx");
        }

        protected void btn_test_ekle_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddTest.aspx");
        }
    }
}