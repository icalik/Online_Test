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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                try
                {
                   
                    string q = "SELECT TOP 10 [konu_id],[konu_adi],[ekleyen] FROM[dbo].[Konular] order by konu_adi asc";

                    SqlCommand com = new SqlCommand(q, con);
                    SqlDataReader dr = com.ExecuteReader();

                    while (dr.Read())
                    {
                        //konu_goster.Text = Convert.ToString(dr["konu_adi"]);
                        
                       Literal1.Text =  Literal1.Text +  dr["konu_adi"] + "<br/>";



                    }
                    dr.Close();
                }
                catch (Exception)
                {
                    

                }




            }
        }

        protected void btn_gir_Click(object sender, EventArgs e)
        {
            Session["id"] = 2;
            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "0;url=User.aspx";
            this.Page.Controls.Add(meta);
        }
    }
}