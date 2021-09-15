using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
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
                string artworkID = Request.QueryString["artworkID"] ?? "";
                string UserID = Request.QueryString["UserID"] ?? "";
                //string sql = "SELECT * from Artwork WHERE artworkID = @artworkID";
                //string sql = "SELECT Artwork.*, Category.name AS Expr1 FROM Artwork INNER JOIN Category ON Artwork.categoryID = Category.categoryID WHERE artworkID = @artworkID";
                string sql = "SELECT Artwork.*, Category.name AS Expr1, [User].username, [User].UserID FROM Artwork INNER JOIN Category ON Artwork.categoryID = Category.categoryID INNER JOIN Gallery ON Artwork.galleryID = Gallery.galleryID INNER JOIN [User] ON Gallery.userID = [User].UserID  WHERE artworkID = @artworkID";

                //Connect the db
                string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@artworkID", artworkID);


                //open the connection
                con.Open();

                //select use the execute reader
                SqlDataReader dr = cmd.ExecuteReader();

                //data binding
                if (dr.Read())
                {
                    picture.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["picture"]);
                    lblDesc.Text = (string)dr["description"];
                    lblCategory.Text = (string)dr["Expr1"];
                    //if (dr["categoryID"].Equals(1))
                    //{
                    //    lblCategory.Text = "Painting";

                    //}
                    //else if (dr["categoryID"].Equals(2))
                    //{
                    //    lblCategory.Text = "Ink";

                    //}
                    //else if (dr["categoryID"].Equals(3))
                    //{
                    //    lblCategory.Text = "Watercolour";

                    //}
                    //lblCategory.Text = (string)dr["name"];
                    lblName.Text = (string)dr["name"];
                    lblPrice.Text = "$ " + Convert.ToString(dr["price"]);
                    lblDate.Text = (string)dr["Date"].ToString();
                    lblStatus.Text = (string)dr["available"];
                    lblHeight.Text = Convert.ToString(dr["height"]);
                    lblWidth.Text = Convert.ToString(dr["width"]);
                    hplArtist.Text = (string)dr["username"];
                    hplArtist.NavigateUrl = "~/ClientArtistProfile.aspx?artistID=" + Convert.ToString(dr["UserID"]);
                    //lblArtist.Text = (string)dr["username"];
                }

                dr.Close();
                con.Close();


            }
        }

        protected void btnAddWish_Click1(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                string artworkID = Request.QueryString["artworkID"] ?? "";
                string userid = Session["UserID"].ToString();

                SqlConnection con;
                string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
                con = new SqlConnection(strCon);
                con.Open();

                string sqlFind = "SELECT * FROM WISHLIST WHERE artworkID = @artworkID AND userID = @userID";
                SqlCommand cmd = new SqlCommand(sqlFind, con);
                cmd.Parameters.AddWithValue("@artworkID", artworkID);
                cmd.Parameters.AddWithValue("@userID", userid);
                SqlDataReader dr = cmd.ExecuteReader(); 
                Boolean found = false;

                //data binding
                if (dr.Read())
                {
                   found = true;
                   ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This artwork is already in the wishlist.');", true);
                }

                con.Close();
                dr.Close();

                if(!found)
                {
                    con.Open();
                    string sqlInsert = "INSERT INTO Wishlist (artworkID, userID) VALUES(@artworkID, @userID)";

                        SqlCommand cmd2 = new SqlCommand(sqlInsert, con);

                        //insert     
                        cmd2.Parameters.AddWithValue("@artworkID", artworkID);
                        cmd2.Parameters.AddWithValue("@userID", userid);

                        //add the rest
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Artwork Added');", true);
                        cmd2.ExecuteNonQuery();
                        con.Close();
                        //Response.Redirect("Wishlist.aspx");
                }
            }
            else
            {
                string msg = "Please login to add artwork to wishlist.";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + msg + "');", true);
            }

        }

        protected void btnAddCart_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                string artworkID = Request.QueryString["artworkID"] ?? "";
                string userid = Session["UserID"].ToString();
                string temp = lblStatus.Text;

                SqlConnection con;
                string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
                con = new SqlConnection(strCon);
                con.Open();

                string sqlFind = "SELECT * FROM Cart WHERE artworkID = @artworkID AND userID = @userID";
                SqlCommand cmd = new SqlCommand(sqlFind, con);
                cmd.Parameters.AddWithValue("@artworkID", artworkID);
                cmd.Parameters.AddWithValue("@userID", userid);
                SqlDataReader dr = cmd.ExecuteReader();
                Boolean availability = true;
                Boolean found = false;
                
                if (temp.Equals("Not Available"))
                {
                    availability = false;
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This artwork is not available');", true);
                }
                else if (dr.Read())
                {
                    found = true;
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This artwork is already in the cart.');", true);
                }

                con.Close();
                dr.Close();

                if (!found && availability){
                    con.Open();
                    string sqlInsert = "INSERT INTO Cart (artworkID, userID) VALUES(@artworkID, @userID)";

                    SqlCommand cmd2 = new SqlCommand(sqlInsert, con);
                    cmd2.Parameters.AddWithValue("@userID", userid);    
                    cmd2.Parameters.AddWithValue("@artworkID", artworkID);

                    //add the rest
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Artwork Added');", true);
                    cmd2.ExecuteNonQuery();
                    con.Close();
                }

            }
            else
            {
                string msg = "Please login to add artwork to cart.";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + msg + "');", true);
            }

        }
    }

}