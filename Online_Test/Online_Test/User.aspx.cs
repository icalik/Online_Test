﻿using System;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            string id;
            string baglanti = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(baglanti);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                id = Session["id"].ToString();
                string q = "select * from Uyeler where uye_id=" + id + "";

                SqlCommand com = new SqlCommand(q, con);
                SqlDataReader dr = com.ExecuteReader();

                while (dr.Read())
                {
                    lbl_ad.Text = Convert.ToString(dr["ad"]);


                }
                dr.Close();
            }
        }
    }
}