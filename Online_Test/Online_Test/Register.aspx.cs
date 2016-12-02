using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Test
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btn_uyeol_Click(object sender, EventArgs e)
        {
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            //string baglanti = "Server=onlinetest.database.windows.net;Database=Online_Test;User ID=onlinetest;Password=g53*f[/5A;Trusted_Connection=False;";
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {







                if (txt_parola1.Text == txt_parola2.Text)
                {
                    string q = "insert into Uyeler(ad,soyad,mail,parola) values ('" + txt_ad.Text + "', '" + txt_soyad.Text + "', '" + txt_mail.Text + "', '" + txt_parola1.Text + "')";
                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.ExecuteNonQuery();
                    lbl_hata.Text = "Kayıdınız oluşturuldu.";
                }
                else {
                    lbl_hata.Text = "Parolalar uyuşmuyor!";

                }

               

            }
            con.Close();

        }


    }
}