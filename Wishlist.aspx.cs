using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Ertist
{
    public partial class Wishlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////display image in repeater
            //SqlConnection con;
            //string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            //con = new SqlConnection(strCon);

            ////open connection
            //con.Open();

            //string sqlSelect = "SELECT [artworkID],[name], [description], [picture], [price] FROM [ArtWork]";

            //SqlCommand cmd = new SqlCommand(sqlSelect, con);

            ////Repeater2.DataSource = cmd.ExecuteReader();
            ////Repeater2.DataBind();

            ////close connection
            //con.Close();

            DataSet ds = GetData();

            Repeater2.DataSource = ds;
            Repeater2.DataBind();
        }

        public string GetImage(object img)
        {

            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }

        private DataSet GetData()
        {
            string CS = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT Artwork.artworkID, Artwork.name, Artwork.price, Artwork.description, " +
                    "Artwork.picture, [User].username, [User].picture AS Expr1 FROM Artwork INNER JOIN Wishlist ON Artwork.artworkID = " +
                    "Wishlist.artworkID INNER JOIN [User] ON Wishlist.userID = [User].UserID", con);

                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
    }
}