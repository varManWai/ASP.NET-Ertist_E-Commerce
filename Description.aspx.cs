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
                string sql = "SELECT * from Artwork WHERE artworkID = @artworkID";

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
                    if (dr["categoryID"].Equals(1))
                    {
                        lblCategory.Text = "Painting";

                    }
                    else if (dr["categoryID"].Equals(2))
                    {
                        lblCategory.Text = "Ink";

                    }
                    else if (dr["categoryID"].Equals(3))
                    {
                        lblCategory.Text = "Watercolour";

                    }
                    //lblCategory.Text = (string)dr["name"];
                    lblName.Text = (string)dr["name"];
                    lblPrice.Text = "RM " + Convert.ToString(dr["price"]);
                    lblDate.Text = (string)dr["Date"].ToString();
                    lblStatus.Text = (string)dr["available"];                 
                }

                dr.Close();
                con.Close();
            }
        }
        
        protected void btnAddWish_Click1(object sender, EventArgs e)
        {
            string artworkID = Request.QueryString["artworkID"] ?? "";
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            string sqlInsert = "INSERT INTO Wishlist (artworkID) VALUES(@artworkID)";

            SqlCommand cmd = new SqlCommand(sqlInsert, con);

            //insert            

            cmd.Parameters.AddWithValue("@artworkID", artworkID);

            //add the rest

            cmd.ExecuteNonQuery();
            con.Close();

            //Response.Redirect("Wishlist.aspx");
        }
    }
 
}