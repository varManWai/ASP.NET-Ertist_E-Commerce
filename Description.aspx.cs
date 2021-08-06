using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Ertist
{
    public partial class Description1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string artID = Request.QueryString["artID"] ?? "";
                string sql = "Select * from Artwork where artID = @artID";

                //Connect the db
                string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@artID", artID);

                //open the connection
                con.Open();

                //select use the execute reader
                SqlDataReader dr = cmd.ExecuteReader();

                //data binding
                if (dr.Read())
                {
                    lblDesc.Text = (string)dr["Description"];
                    lblArtistName.Text = (string)dr["Artist"];
                    lblName.Text = (string)dr["Name"];
                    lblPrice.Text = (string)dr["Price"];
                    lblDate.Text = (string)dr["Date"];
                    lblStatus.Text = (string)dr["Status"];                 
                }

                dr.Close();
                con.Close();
            }
        }
    }
}