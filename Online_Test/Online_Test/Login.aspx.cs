using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Configuration;
namespace Online_Test
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_girisyap_Click(object sender, EventArgs e)
        {
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string q1 = "select count(*) from Uyeler where mail='" + txt_mail.Text + "' and parola='" + txt_parola.Text + "'";
                SqlCommand cmd1 = new SqlCommand(q1, con);
                cmd1.ExecuteNonQuery();
                int say = (int)cmd1.ExecuteScalar();
                if (say != 0) // giriş başarılı
                {

                    SqlCommand com = new SqlCommand("select * from Uyeler where mail='" + txt_mail.Text + "' and parola='" + txt_parola.Text + "'", con);

                    SqlDataReader dr = com.ExecuteReader();
                    while (dr.Read())
                    {
                        string id = Convert.ToString(dr["uye_id"]);
                        // burada session ile id gönderilecek...
                        Session["id"] = id;
                        HtmlMeta meta = new HtmlMeta();
                        meta.HttpEquiv = "Refresh";
                        meta.Content = "0;url=User.aspx";
                        this.Page.Controls.Add(meta);
                        lbl_hata.Text = "Giriş başarılı <br> Yönlendiriliyorsunuz...";


                    }
                    dr.Close();
                }
                else //giriş başarısız
                {
                    lbl_hata.Text = "Mail adresi ve parola uyuşmuyor <br> lütfen tekrar deneyiniz";
                }
            }
        }
    }
}