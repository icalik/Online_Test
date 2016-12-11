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
    public partial class EditProfile : System.Web.UI.Page
    {
        private string id;
        private string ad;
        private string soyad;
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
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

                }
                catch (Exception)
                {

                    lbl_uyari.Text = "Hata oluştu." + e.ToString();
                }
            }
        }
    }
}