using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.IO;
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
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {

                string q1 = "select count(*) from Uyeler where mail='"+ txt_mail.Text +"'";
                SqlCommand cmd1 = new SqlCommand(q1, con);
                cmd1.ExecuteNonQuery();
                int say = (int)cmd1.ExecuteScalar();
                if (say != 0)
                {
                    lbl_hata.Text = "Mail adresi kullanılıyor!";
                }
                else {

                    if (txt_parola1.Text == txt_parola2.Text)
                    {
                        string uzanti;
                        uzanti = Path.GetExtension(fu_kayit.PostedFile.FileName);
                        double boyut = fu_kayit.PostedFile.ContentLength;
                        if (uzanti == ".jpg" || uzanti == ".JPG")
                        {
                            if (boyut < 1048576)
                            {
                                string fotoisim = txt_mail.Text + ".jpg";
                                fu_kayit.SaveAs(Server.MapPath("fotograf/" + fotoisim));

                                string q = "insert into Uyeler(ad,soyad,mail,parola,profil_foto) values ('" + txt_ad.Text + "', '" + txt_soyad.Text + "', '" + txt_mail.Text + "', '" + txt_parola1.Text + "', '" + fotoisim + "')";
                                SqlCommand cmd = new SqlCommand(q, con);
                                cmd.ExecuteNonQuery();
                                lbl_hata.Text = "Kayıdınız oluşturuldu.";
                                /*
                                ----Burada kullanici sayfasina yonlendirilecek! 
                                 */
                            }
                            else
                            {
                                lbl_hata.Text = "Dosya boyutunu 1 mb dan az giriniz.";
                            }
                        }
                        else
                        {
                            lbl_hata.Text = "Lütfen .jpg uzantılı resim ekleyiniz.";
                        }

                        
                       
                    }
                    else
                    {
                        lbl_hata.Text = "Parolalar uyuşmuyor!";
                    }
                }
            }
            con.Close();

        }

        
    }
}