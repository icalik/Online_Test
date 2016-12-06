using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Online_Test
{
    public partial class Register1 : System.Web.UI.Page
    {
        private string fotoisim;

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
                string q1 = "select count(*) from Uyeler where mail='" + txt_mail.Text + "'";
                SqlCommand cmd1 = new SqlCommand(q1, con);
                cmd1.ExecuteNonQuery();
                int say = (int)cmd1.ExecuteScalar();
                if (say != 0) // mail sql karşılaştırması yapılıyor
                {
                    lbl_hata.Text = "Mail adresi kullanılıyor!";
                }
                else
                { // aynı mail tabloda bulunmuyorsa

                    if (txt_parola1.Text == txt_parola2.Text) // parolaları karşılaştırıyor
                    {
                        string uzanti;
                        uzanti = Path.GetExtension(fu_kayit.PostedFile.FileName);
                        double boyut = fu_kayit.PostedFile.ContentLength;
                        if (fu_kayit.HasFile) // Fileupload ın içi doluysa
                        {
                            if (uzanti == ".jpg" || uzanti == ".JPG") // yüklenen dosyanın uzantısı kontrol ediliyor
                            {
                                if (boyut < 1048576) // boyut 1 mb dan ufaksa
                                {
                                    fotoisim = txt_mail.Text + ".jpg";
                                    fu_kayit.SaveAs(Server.MapPath("fotograf/" + fotoisim));

                                }
                                else // boyut 1 mb dan ufak değilse
                                {
                                    lbl_hata.Text = "Dosya boyutunu 1 mb dan az giriniz.";
                                }
                            }
                            else // uzantı jpg değilse
                            {
                                lbl_hata.Text = "Lütfen .jpg uzantılı resim ekleyiniz.";
                            }
                        }
                        else // FileUpload boşsa varsayılan resim ismi yükleniyor.
                        {
                            fotoisim = "profilfoto.jpg";
                        }
                        string q = "insert into Uyeler(ad,soyad,mail,parola,profil_foto) values ('" + txt_ad.Text + "', '" + txt_soyad.Text + "', '" + txt_mail.Text + "', '" + txt_parola1.Text + "', '" + fotoisim + "')";
                        SqlCommand cmd = new SqlCommand(q, con);
                        cmd.ExecuteNonQuery();
                        HtmlMeta meta = new HtmlMeta();
                        meta.HttpEquiv = "Refresh";
                        meta.Content = "5;url=Login.aspx";
                        this.Page.Controls.Add(meta);
                        lbl_hata.Text = "Kayıdınız oluşturuldu.<br> 5 saniye sonra yönlendirileceksiniz...";

                    }
                    else // parolalar uyuşmuyorsa
                    {
                        lbl_hata.Text = "Parolalar uyuşmuyor!";
                    }
                }
            }
            con.Close();
        }
    
    }
}