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
    public partial class AddTopic : System.Web.UI.Page
    {
        private string id;
        private string konu;

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
                konu = txt_konu.Text.ToUpper();
                string q1 = "select count(*) from Konular where konu_adi='" + konu + "'";
                SqlCommand cmd1 = new SqlCommand(q1, con);
                cmd1.ExecuteNonQuery();
                int say = (int)cmd1.ExecuteScalar();
                if (say != 0)
                {
                    lbl_uyari.Text = "Boyle konu zaten var ki!";
                }
                else
                {

                    try
                    {

                        string q2 = "insert into Konular values('" + konu + "'," + id + ")";

                        SqlCommand com1 = new SqlCommand(q2, con);
                        com1.ExecuteNonQuery();
                        lbl_uyari.Text = "Kaydedildi!";
                        HtmlMeta meta = new HtmlMeta();
                        meta.HttpEquiv = "Refresh";
                        meta.Content = "1;url=User.aspx";
                        this.Page.Controls.Add(meta);
                        lbl_hata.Text = "Yönlendiriliyorsunuz...";

                    }
                    catch (Exception)
                    {

                        lbl_uyari.Text = "Hata oluştu." + e.ToString();
                    }
                }


               
            }
        }
    }
}