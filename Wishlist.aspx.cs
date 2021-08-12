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


        }

        public void wishlistFunction()
        {
            ////display image in repeater
            //SqlConnection con;
            //string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            //con = new SqlConnection(strCon);

            ////open connection
            //con.Open();






            //string sqlSelect = "SELECT Artwork.artworkID, Artwork.name, Artwork.price, Artwork.description, Artwork.picture, [User].username, [User].picture AS Expr1, Wishlist.wishlistID FROM Artwork INNER JOIN Wishlist ON Artwork.artworkID = Wishlist.artworkID INNER JOIN [User] ON Wishlist.userID = [User].UserID AND [User].UserID = '20'";
            //SqlCommand cmd = new SqlCommand(sqlSelect, con);
            ////string userId = Session["UserID"].ToString();
            ////cmd.Parameters.AddWithValue("@UserId", userId);
            ////Response.Write(cmd);

            //Repeater1.DataSource = cmd.ExecuteReader();
            //Repeater1.DataBind();

            //if (!string.IsNullOrEmpty(Session["UserID"] as string))
            //{
            //    int userId = (int) Session["UserID"];
            //    string sqlSelect = "SELECT Artwork.artworkID, Artwork.name, Artwork.price, Artwork.description, Artwork.picture, [User].username, [User].picture AS Expr1, Wishlist.wishlistID FROM Artwork INNER JOIN Wishlist ON Artwork.artworkID = Wishlist.artworkID INNER JOIN [User] ON Wishlist.userID = [User].UserID AND [User].UserID = @userId";
            //    SqlCommand cmd = new SqlCommand(sqlSelect, con);



            //    cmd.Parameters.AddWithValue("@userId", userId);
            //    Repeater1.DataSource = cmd.ExecuteReader();
            //    Repeater1.DataBind();
            //}
            //Response.Write(cmd);








            //close connection
            //con.Close();
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
            Response.Redirect("Wishlist.aspx");


        }
    }
}