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

    public partial class Testing : System.Web.UI.Page
    {
        string id,SoruID,dogru_cevap,TestID;
        int TestingBitis, sayac,durum=-1;
        protected void Page_Load(object sender, EventArgs e)
        {
            TestingBitis = Convert.ToInt32(Session["SoruCozSon"]);
            sayac = Convert.ToInt32(Session["SoruCozSayac"]);
            lbl_baslik.Text = sayac + ". Soruyu Çöz";
            id = Session["id"].ToString();
           
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                TestID = Session["SoruId"].ToString();
                string q = "SELECT * FROM(SELECT ROW_NUMBER() OVER(ORDER BY test_id ASC) AS rownumber, *FROM Sorular where test_id = '" + TestID + "') AS foo WHERE rownumber = '" + sayac + "'";
                SqlCommand com = new SqlCommand(q, con);
                SqlDataReader dr = com.ExecuteReader();
               
                while (dr.Read())
                {
                    lbl_baslik.Text = sayac + ". Soruyu Çöz...";
                    SoruID = dr["soru_id"].ToString();
                    lbl_soru.Text = dr["soru"].ToString();



                    Random ran = new Random();
                    var numbers = Enumerable.Range(1, 5).OrderBy(i => ran.Next()).ToList();

                    List<ListItem> ans = new List<ListItem>();
                    ans.Add(new ListItem(dr["dogru_cevap"].ToString(), "A"));
                    ans.Add(new ListItem(dr["cevap2"].ToString(), "B"));
                    ans.Add(new ListItem(dr["cevap3"].ToString(), "C"));
                    ans.Add(new ListItem(dr["cevap4"].ToString(), "D"));
                    ans.Add(new ListItem(dr["cevap5"].ToString(), "E"));
                    foreach (int num in numbers)
                    {
                        rb_cevaplar.Items.Add(ans[num - 1]);
                    }




                    
                    dogru_cevap = dr["dogru_cevap"].ToString();
                }
                dr.Close();
            }
        }

        protected void btn_gonder_Click(object sender, EventArgs e)
        {

            if (sayac <= TestingBitis)
            {

                string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(baglanti);
                con.Open();
                if (con.State == System.Data.ConnectionState.Open)
                {
                    if (rb_cevaplar.SelectedItem.Text == dogru_cevap)
                    {
                        durum = 1;
                    }
                    else
                    {
                        durum = 0;
                    }
                    // son soru kontrolü
                    if (sayac == TestingBitis)
                    {

                        string sorgu = "insert into Cozulen_Test(cozen_id,soru_id,durum,test_id) values ('" + id + "', '" + SoruID + "', '" + durum + "', '"+ TestID+"')";
                        SqlCommand cmd = new SqlCommand(sorgu, con);
                        cmd.ExecuteNonQuery();
                        lbl_hata.Text = "Test bitti yönlendiriliyorsunuz...";
                        HtmlMeta meta = new HtmlMeta();
                        meta.HttpEquiv = "Refresh";
                        meta.Content = "1;url=User.aspx";
                        this.Page.Controls.Add(meta);

                    }
                    else
                    {
                       
                        string sorgu = "insert into Cozulen_Test(cozen_id,soru_id,durum,test_id) values ('"+id+"', '" + SoruID + "', '" + durum + "', '" + TestID + "')";
                        SqlCommand cmd = new SqlCommand(sorgu, con);
                        cmd.ExecuteNonQuery();
                        lbl_hata.Text = "Soru " + sayac + "Çözüldü...";
                        HtmlMeta meta = new HtmlMeta();
                        meta.HttpEquiv = "Refresh";
                        meta.Content = "1;url=Testing.aspx";
                        this.Page.Controls.Add(meta);

                    }

                }

                Session["SoruCozSayac"] = sayac + 1;
                rb_cevaplar.Items.Clear();

            }
            else
            {
                lbl_hata.Text = "sayaç hatası oluştu";
            }
            
        }
    }
}