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
    public partial class Description : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //display image in repeater
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            con = new SqlConnection(strCon);

            //open connection
            con.Open();

            string sqlSelect = "SELECT [artworkID],[name], [description], [picture], [price] FROM [ArtWork]";

            SqlCommand cmd = new SqlCommand(sqlSelect, con);

            Repeater1.DataSource = cmd.ExecuteReader();
            Repeater1.DataBind();

            //close connection
            con.Close();
        }

        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }
    }
}