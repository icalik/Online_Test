using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Test
{
    public partial class ShowStatistics : System.Web.UI.Page
    {
        public string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            id = Session["id"].ToString();
            SqlDataSource1.SelectCommand = "select k.konu_adi,t.test_adi,t.soru_sayisi, count(durum) as dogru_sayisi,((CAST(count(durum) AS float)/t.soru_sayisi)*100) as puan from Cozulen_Test ct, Testler t, Konular k where ct.cozen_id = " + id+" and ct.test_id = t.test_id and t.konu_id = k.konu_id and durum = 1 group by t.test_adi,k.konu_adi,t.soru_sayisi";
           
            
            /*// string ad_gelen = Convert.ToString(txt_profil_ad.Text);
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string q = "select ct.test_id,t.test_adi,k.konu_adi,t.soru_sayisi ,count(durum) as dogru_sayisi from Cozulen_Test ct,Testler t, Konular k where ct.cozen_id = '"+ id +"' and ct.test_id = t.test_id and t.konu_id = k.konu_id and durum = 1 group by ct.test_id,t.test_adi,k.konu_adi,t.soru_sayisi; ";
                SqlCommand com = new SqlCommand(q, con);

                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {

                    
                }

            }
            */

        }
        
    }
}



