using System;
using System. Collections. Generic;
using System.Configuration;
using System.Data.SqlClient;
using System. Linq;
using System. Web;
using System. Web. UI;
using System. Web. UI. WebControls;

namespace Ertist
{
    public partial class ClientArtistProfile : System. Web. UI. Page
    {

        protected void Page_Load ( object sender, EventArgs e )
        {

            if (!Page.IsPostBack)
            {

                string artistID = Request.QueryString["artistID"] ?? "";
                string sql = "Select * from [User] where UserID = @artistID";

                //Connect the db
                string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@artistID", artistID);
  

                //open the connection
                con.Open();

                //select use the execute reader
                SqlDataReader dr = cmd.ExecuteReader();

                //data binding
                if (dr.Read())
                {
                    artist_picture.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["picture"]);
                    lbl_artist_username.Text = (string)dr["username"];
                    lbl_bio.Text = (string)dr["bio"];

                }

                dr.Close();
                con.Close();
            }
        }

        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }

        protected void btnMoreDetails_Click ( object sender, EventArgs e )
        {
            string artistID = Request.QueryString["artistID"] ?? "";
            Response.Redirect ("ClientArtistDetails.aspx?artistID="+ artistID);
        }
    }
}