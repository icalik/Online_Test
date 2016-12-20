using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Online_Test
{
    public partial class AddTest : System.Web.UI.Page
    {
        string id,konu_id;
        int secilen_konu;
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
                while (dr.Read())
                {

                    ddl_konu.Items.Add(dr["konu_adi"].ToString());
                }

            }
        }

        protected void btn_test_ekle_Click(object sender, EventArgs e)
        {
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string q1 = "select count(*) from Testler where test_adi='" + txt_test_adi.Text + "'";
                SqlCommand cmd1 = new SqlCommand(q1, con);
                cmd1.ExecuteNonQuery();
                int say = (int)cmd1.ExecuteScalar();
                if (say != 0)
                {
                    lbl_hata.Text = "Aynı isimde test var ki!";
                }
                else
                {
                    try
                    {

                        string s_konu = konusec(ddl_konu.SelectedValue);
                        string soru_sayisi = (ddl_soru_sayisi.SelectedValue);
                        string q = "insert into Testler(test_adi,konu_id,soru_sayisi,ekleyen_id) values ('" + txt_test_adi.Text + "', '" + s_konu + "', '" + soru_sayisi + "', '" + id + "')";
                        SqlCommand cmd = new SqlCommand(q, con);
                        cmd.ExecuteNonQuery();
                        Session["SoruSayac"] = soru_sayisi;
                        Session["sayac"] = 1;
                        lbl_uyari.Text = "Kaydedildi!";
                        HtmlMeta meta = new HtmlMeta();
                        meta.HttpEquiv = "Refresh";
                        meta.Content = "1;url=AddQuestion.aspx";
                        this.Page.Controls.Add(meta);
                        lbl_uyari.Text = "Yönlendiriliyorsunuz...";
                    }
                    catch (Exception)
                    {

                        lbl_uyari.Text = "Hata oluştu!";
                    }
                }
            }
        }

        private string konusec(string v)
        {
           
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string q = "select konu_id from Konular where konu_adi = '" + v + "'";
                SqlCommand com = new SqlCommand(q, con);
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {

                    konu_id = dr["konu_id"].ToString();
                }

            }
            return konu_id;
        }
    }
}