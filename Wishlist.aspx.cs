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
            if (!Page.IsPostBack)
            {
                wishlistFunction();
            }

        }

        public void wishlistFunction()
        {
            //display image in repeater
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            con = new SqlConnection(strCon);

            //open connection
            con.Open();

            string sqlSelect = "SELECT Artwork.artworkID, Artwork.name, Artwork.price, Artwork.description, Artwork.picture, [User].username, [User].picture AS Expr1, Wishlist.wishlistID FROM Artwork INNER JOIN Wishlist ON Artwork.artworkID = Wishlist.artworkID INNER JOIN [User] ON Wishlist.userID = [User].UserID  AND [User].UserID = 19";

            SqlCommand cmd = new SqlCommand(sqlSelect, con);

            Repeater2.DataSource = cmd.ExecuteReader();
            Repeater2.DataBind();


            //close connection
            con.Close();
        }

        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {

            Button btn = sender as Button;
            string wishlistID = btn.Attributes["CustomParameter"].ToString();
            string sql = "DELETE from Wishlist where wishlistID = @wishlistID";
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@wishlistID", wishlistID);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            wishlistFunction();

        }
    }
}