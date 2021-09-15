using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ertist {
    public partial class SearchAll : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {

            string searchInput="";
            int countArtist=0;
            int countArtwork=0;

            if (!Page.IsPostBack) {
                searchInput = Request.QueryString ["input"] ?? "";
            }

            if (searchInput != "") {
                SqlConnection con;
                string strCon = ConfigurationManager.ConnectionStrings ["ertistDB"].ConnectionString;
                con = new SqlConnection (strCon);

                con.Open ();
                SqlCommand cmdArtist = new SqlCommand ("SELECT UserID, username, picture FROM [User] WHERE (roleID = 2) AND (username LIKE '%' + @search + '%') ORDER BY UserID", con);
                cmdArtist.Parameters.AddWithValue ("@search", searchInput);
                Repeater1.DataSource = cmdArtist.ExecuteReader ();
                Repeater1.DataBind ();
                con.Close ();
                cmdArtist = new SqlCommand ("SELECT COUNT(*) FROM [User] WHERE (roleID = 2) AND (username LIKE '%' + @search + '%')", con);
                con.Open ();
                cmdArtist.Parameters.AddWithValue ("@search", searchInput);
                countArtist = ( int )cmdArtist.ExecuteScalar ();
                con.Close ();

                con.Open ();
                SqlCommand cmdArtwork = new SqlCommand ("SELECT [artworkID], [name], [picture] FROM[ArtWork] where ([name] LIKE '%' + @search + '%') order by artworkID Asc", con);  
                cmdArtwork.Parameters.AddWithValue ("@search", searchInput);
                Repeater2.DataSource = cmdArtwork.ExecuteReader ();
                Repeater2.DataBind ();
                con.Close ();
                cmdArtwork = new SqlCommand ("SELECT COUNT(*) FROM [ArtWork] where ([name] LIKE '%' + @search + '%')", con);
                con.Open ();
                cmdArtwork.Parameters.AddWithValue ("@search", searchInput);
                countArtwork = ( int )cmdArtwork.ExecuteScalar ();
                con.Close ();
            }

            if (countArtist == 0) {
                lblArtistNotFound.Text = "No Artist Found.";
            }
            if (countArtwork == 0) {
                lblArtworkNotFound.Text = "No Artwork Found.";
            }
        }
        public string GetImage (object img) {
            return "data:image/jpg;base64," + Convert.ToBase64String (( byte [] )img);
        }
    }
}