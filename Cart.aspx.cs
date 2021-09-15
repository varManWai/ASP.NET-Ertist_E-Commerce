using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;

namespace Ertist
{
    public partial class Cart : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds2;
        string connectionString = WebConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
        SqlConnection cnn;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadingDataToRepeater();
            }
        }

        private void LoadingDataToRepeater()
        {
            cnn = new SqlConnection(connectionString);
            cnn.Open();
            try
            {
                string sql = "SELECT Artwork.artworkID, Artwork.name, Artwork.price, Artwork.description, Artwork.picture, Artwork.date, Artwork.stock, Artwork.available, Artwork.categoryID, Artwork.galleryID, [User].picture AS Expr1, [User].username, Cart.cartID FROM Artwork INNER JOIN Cart ON Artwork.artworkID = Cart.artworkID INNER JOIN[User] ON Cart.userID = [User].UserID WHERE([User].UserID = @userID)";
                cmd = new SqlCommand(sql, cnn);
                cmd.Parameters.AddWithValue("@userID", Session["UserID"]);
                da = new SqlDataAdapter(cmd);
                ds2 = new DataSet();
                da.Fill(ds2);


                Repeater2.DataSource = ds2;
                Repeater2.DataBind();



                cmd.Dispose();
                cnn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void rpt2_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                var hdfUserId = (HiddenField)e.Item.FindControl("hdfUserId");
                var repeater3 = (Repeater)e.Item.FindControl("Repeater3");

                string sql = "SELECT [User].picture, [User].username, Gallery.userID, [User].UserID AS Expr1, Artwork.galleryID, Artwork.artworkID FROM Gallery INNER JOIN [User] ON Gallery.userID = [User].UserID INNER JOIN Artwork ON Gallery.galleryID = Artwork.galleryID WHERE (Artwork.artworkID = @artworkID)";
                cmd = new SqlCommand(sql, cnn);
                cmd.Parameters.AddWithValue("@artworkID", Convert.ToInt32(hdfUserId.Value));


                da = new SqlDataAdapter(cmd);
                ds2 = new DataSet();
                da.Fill(ds2);


                repeater3.DataSource = ds2;
                repeater3.DataBind();



                cmd.Dispose();
                cnn.Close();
            }
        }


        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }

        public Double getTotal(object data)
        {
            try
            {
                return (Convert.ToDouble(data) + 4.99);
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string cartID = btn.Attributes["CustomParameter"].ToString();
            string sql2 = "DELETE from Cart where cartID = @cartID";
            string strCon2 = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con2 = new SqlConnection(strCon2);
            SqlCommand cmd2 = new SqlCommand(sql2, con2);
            cmd2.Parameters.AddWithValue("@cartID", cartID);

            con2.Open();
            cmd2.ExecuteNonQuery();
            con2.Close();
            Response.Redirect("Cart.aspx");
        }
    }
}