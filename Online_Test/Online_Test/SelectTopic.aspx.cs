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
    public partial class SolveTest : System.Web.UI.Page
    {
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Session["id"].ToString();
            // string ad_gelen = Convert.ToString(txt_profil_ad.Text);
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string q = "select * from Konular";
                SqlCommand com = new SqlCommand(q, con);

                SqlDataReader dr = com.ExecuteReader();

                if (ddl_konu.Items.Count == 0)
                {
                    while (dr.Read())
                    {

                        ddl_konu.Items.Add(dr["konu_adi"].ToString());

                    }
                }
            }
        }

        protected void btn_konu_sec_Click(object sender, EventArgs e)
        {

            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            string SecilenTest = dll_test_sec.SelectedValue;
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string q1 = "Select count(*) from Cozulen_Test where test_id = (select test_id from Testler where test_adi = '" + SecilenTest + "') and cozen_id='" + id +"'";
                SqlCommand cmd1 = new SqlCommand(q1, con);
                cmd1.ExecuteNonQuery();
                int say = (int)cmd1.ExecuteScalar();
                if (say != 0)
                {
                    lbl_uyari.Text = "Sen bu testi daha önce çözdün";
                }
                else
                {
                    int sayac = 0;
                    string q = "Select test_id from Sorular where test_id = (select test_id from Testler where test_adi = '" + SecilenTest + "')";
                    SqlCommand com = new SqlCommand(q, con);
                    SqlDataReader dr = com.ExecuteReader();
                    while (dr.Read())
                    {
                        sayac++;
                        Session["SoruId"] = dr["test_id"].ToString();
                        lbl_hata.Text = "Başarılı Yönlendriliyorsunuz...";
                        HtmlMeta meta = new HtmlMeta();
                        meta.HttpEquiv = "Refresh";
                        meta.Content = "1;url=Testing.aspx";
                        this.Page.Controls.Add(meta);

                    }
                    Session["SoruCozSon"] = sayac;
                    Session["SoruCozSayac"] = 1;
                }

                

            }







        }

        protected void ddl_konu_SelectedIndexChanged(object sender, EventArgs e)
        {
            dll_test_sec.Items.Clear();
            string secilen_konu = ddl_konu.SelectedItem.Text;
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string q = "Select test_adi from Testler where konu_id = (select konu_id from Konular where konu_adi = '" + secilen_konu + "')";
                SqlCommand com = new SqlCommand(q, con);
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {

                    dll_test_sec.Items.Add(dr["test_adi"].ToString());
                }

            }
        }


    }
}