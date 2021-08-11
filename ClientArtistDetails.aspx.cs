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
    public partial class ClientArtistDetails : System. Web. UI. Page
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
                    lbl_username.Text = (string)dr["username"];
                    lbl_fn.Text = (string)dr["fname"] + " ";
                    lbl_ln.Text = (string)dr["lname"];
                    lbl_gender.Text = (string)dr["gender"];
                    lbl_bio.Text = (string)dr["bio"];
                    lbl_date.Text = (string)dr["createDate"].ToString();
                    lbl_no.Text = (string)dr["phoneNo"];
                    lbl_mail.Text = (string)dr["email"];

                }

                dr.Close();
                con.Close();
            }
        }

    }
}