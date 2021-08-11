using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ertist
{
    public partial class ClientArtistArtwork : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string galleryID = Request.QueryString["galleryID"] ?? "";
                string sql = "Select * from Gallery where galleryID = @galleryID";

                //Connect the db
                string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@galleryID", galleryID);

                //open the connection
                con.Open();

                //select use the execute reader
                SqlDataReader dr = cmd.ExecuteReader();

                //data binding
                if (dr.Read())
                {
                    gallery_name.Text = (string)dr["name"];
                    gallery_date.Text = (string)dr["date"].ToString();
                    gallery_cover.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["cover"]);
                }

                dr.Close();
                con.Close();
            }

        }

        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }
    }
}