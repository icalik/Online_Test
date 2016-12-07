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

        protected void btn_profil_kaydet_Click(object sender, EventArgs e)
        {
            // string ad_gelen = Convert.ToString(txt_profil_ad.Text);
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                ad = txt_profil_ad.Text;
                soyad = txt_profil_soyad.Text;
                try
                {

                    string q2 = "update Uyeler set ad='" + ad + "', soyad='" + soyad + "', parola='" + txt_profil_parola1.Text + "' where uye_id='" + id + "'";

                    SqlCommand com1 = new SqlCommand(q2, con);
                    com1.ExecuteNonQuery();
                    Response.AddHeader("refresh", "0;URL=User.aspx");

                }
                catch (Exception)
                {


                }
            }
        }

        protected void btn_profil_duzenle_Click(object sender, EventArgs e)
        {
            txt_profil_ad.Text = ad;
            txt_profil_soyad.Text = soyad;

        }
        protected void btn_konu_ekle_kaydet_Click(object sender, EventArgs e)
        {
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string q1 = "select count(*) from Konular where konu_adi='" + (txt_konu_ad.Text).ToUpper() + "'";
                SqlCommand cmd1 = new SqlCommand(q1, con);
                cmd1.ExecuteNonQuery();
                int say = (int)cmd1.ExecuteScalar();
                if (say != 0) // konu adı sql karşılaştırması yapılıyor
                {
                    lbl_konu_ekle_hata.Text = "Konu adı bulunuyor!";
                }
                else
                { // aynı konu adı tabloda bulunmuyorsa
                    string q = "insert into Konular(konu_adi,ekleyen) values ('" + (txt_konu_ad.Text).ToUpper() + "', '" + id + "')";
                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.ExecuteNonQuery();
                    lbl_konu_ekle_hata.Text = "Konu başarıyla eklendi";
                }

            }
        }

        protected void btn_konu_ekle_Click(object sender, EventArgs e)
        {

        }
    }
}