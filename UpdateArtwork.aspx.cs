using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Ertist
{
    public partial class UpdateArtwork : System.Web.UI.Page
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
                    ddlAvailable.Text = (string)dr["available"];
                    ddlCategory.Text = (string)dr["categoryID"].ToString();

                }

                dr.Close();
                con.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int artworkID = Convert.ToInt32(artid.Text);
            string name = txtName.Text;
            string price = txtPrice.Text;
            string description = txtDesc.Text;
            int stock = Convert.ToInt32(txtStock.Text);
            string available = ddlAvailable.SelectedItem.Text;
            //string category = ddlCategory.SelectedItem.Text;
            int painting = 1;
            int ink = 2;
            int watercolour = 3;

            string sql = @"update Artwork set name = @name, price = @price, description = @description, available = @available, categoryID = @categoryID where artworkID = @artworkID";

            //Connection
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@artworkID", artworkID);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@description", description);
            cmd.Parameters.AddWithValue("@stock", stock);
            cmd.Parameters.AddWithValue("@available", available);
            if (ddlCategory.SelectedItem.Text.Equals("Painting"))
            {
                cmd.Parameters.AddWithValue("@categoryID", Convert.ToInt32(painting));

            }
            else if (ddlCategory.SelectedItem.Text.Equals("Ink"))
            {
                cmd.Parameters.AddWithValue("@categoryID", Convert.ToInt32(ink));

            }
            else if (ddlCategory.SelectedItem.Text.Equals("Watercolour"))
            {
                cmd.Parameters.AddWithValue("@categoryID", Convert.ToInt32(watercolour));
            }

            con.Open();
            cmd.ExecuteNonQuery(); //use in update, insert, delete
            con.Close();

            Response.Redirect("EditArtwork.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditArtwork.aspx");
        }
    }
}