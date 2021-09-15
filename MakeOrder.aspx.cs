using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using System.Web.Configuration;


namespace Ertist
{
    public partial class MakeOrder : System.Web.UI.Page
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



        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string address = DropDownList1.SelectedItem.Value;
                Session["payment"] = null;
                Session["email"] = null;
                Response.Redirect(url: "Payment?Address=" + address);
            }
            catch (Exception er)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "Somethings went wrong", true);
            }

        }
    }
}