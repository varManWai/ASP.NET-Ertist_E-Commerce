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
    public partial class DeleteArtwork : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string artworkID = Request.QueryString["artworkID"] ?? "";
                string sql = "Select * from Artwork where artworkID = @artworkID";

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
                    artid.Text = (string)dr["artworkID"].ToString();
                    txtName.Text = (string)dr["name"];
                    txtPrice.Text = (string)dr["price"].ToString();
                    txtDesc.Text = (string)dr["description"];
                    txtStock.Text = (string)dr["stock"].ToString();
                    txtWidth.Text = (string)dr["width"].ToString();
                    txtHeight.Text = (string)dr["height"].ToString();
                    ddlAvailable.Text = (string)dr["available"];
                    ddlCategory.SelectedValue = (string)dr["categoryID"].ToString();
                    ddlGallery.SelectedValue = (string)dr["galleryID"].ToString();
                }

                dr.Close();
                con.Close();

            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int artworkID = Convert.ToInt32(artid.Text);
            string sql = "DELETE from Artwork where artworkID = @artworkID";
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@artworkID", artworkID);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("EditArtwork.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditArtwork.aspx");
        }
    }
}