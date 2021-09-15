using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Ertist
{
    public partial class Homepage : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds2;
        string connectionString = WebConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
        SqlConnection cnn;

        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = GetData_1();

            Repeater1.DataSource = ds;
            Repeater1.DataBind();

            LoadingDataToRepeater();


            DataSet ds2 = GetData_2();

          

        }

        private void LoadingDataToRepeater()
        {
            cnn = new SqlConnection(connectionString);
            cnn.Open();
            try
            {
                string sql = "SELECT TOP 3 UserID, username, bio, picture, roleID FROM [User] WHERE (roleID = 2)";
                cmd = new SqlCommand(sql, cnn);
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
            if(e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                var hdfUserId = (HiddenField)e.Item.FindControl("hdfUserId");
                var repeater3 = (Repeater)e.Item.FindControl("Repeater3");

                string sql = "SELECT TOP (3) [User].UserID, Gallery.galleryID, Gallery.userID AS Expr1, Artwork.artworkID, Artwork.picture FROM [User] INNER JOIN Gallery ON [User].UserID = Gallery.userID INNER JOIN Artwork ON Gallery.galleryID = Artwork.galleryID WHERE ([User].UserID = @hdfUserId )";
                cmd = new SqlCommand(sql, cnn);
                cmd.Parameters.AddWithValue("@hdfUserId", Convert.ToInt32(hdfUserId.Value));


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

        private DataSet GetData_1()
        {
            string CS = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT TOP 3 * from Artwork;", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
        private DataSet GetData_2()
        {
            string CS = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT TOP 3 UserID, username, bio, picture, roleID FROM [User] WHERE (roleID = 2)", con);
                DataSet ds = new DataSet();
                da.Fill(ds, "User");
                return ds;
            }
        }
        private DataSet GetData_3(String userId)
        {
            string CS = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT TOP (3) [User].UserID, Gallery.galleryID, Gallery.userID AS Expr1, Artwork.artworkID, Artwork.picture FROM [User] INNER JOIN Gallery ON [User].UserID = Gallery.userID INNER JOIN Artwork ON Gallery.galleryID = Artwork.galleryID WHERE ([User].UserID = " + userId + ")", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }

    }
}