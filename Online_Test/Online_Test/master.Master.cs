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
    public partial class master : System.Web.UI.MasterPage
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

                        Literal1.Text = Literal1.Text + "• " + dr["konu_adi"] + "<br/>";
                    }
                    dr.Close();

                    ////
                    string q1 = "SELECT TOP 10 [test_adi] FROM [dbo].[Testler] order by test_id desc";

                    SqlCommand com1 = new SqlCommand(q1, con);
                    SqlDataReader dr1 = com1.ExecuteReader();

                    while (dr1.Read())
                    {
                        //konu_goster.Text = Convert.ToString(dr["konu_adi"]);

                        Literal2.Text = Literal2.Text + "• " + dr1["test_adi"] + "<br/>";
                    }
                    dr1.Close();
                }
                catch (Exception)
                {


                }
            }
        }
    }
}