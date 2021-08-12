using System;
using System. Collections. Generic;
using System. Configuration;
using System. Data. SqlClient;
using System. Linq;
using System. Web;
using System. Web. UI;
using System. Web. UI. WebControls;

namespace Ertist
{
    public partial class ArtistArtwork : System. Web. UI. Page
    {
        protected void Page_Load ( object sender, EventArgs e )
        {
            string galleryID = Request.QueryString["galleryID"] ?? "";
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);

            //Cover Photo
            string sqlSelectCover = "SELECT name, cover, date FROM Gallery WHERE galleryID = @galleryID";
            SqlCommand cmdCover = new SqlCommand(sqlSelectCover, con);
            cmdCover. Parameters. AddWithValue ("@galleryID", galleryID);

            con. Open ();
            SqlDataReader dr = cmdCover.ExecuteReader();
            if ( dr. Read () )
            {
                cover. ImageUrl = "data:image/jpg;base64," + Convert. ToBase64String (( byte [ ] ) dr [ "cover" ]);
                lblGalName.Text= ( string ) dr [ "name" ];
                lblGalDate. Text = ( string ) dr ["date"].ToString();
            }
            dr. Close ();
            con. Close ();

            //Artwork
            //string sqlSelectArtwork = "SELECT [name], [picture] FROM [Artwork] WHERE galleryID = @galleryID";
            //SqlCommand cmdArt = new SqlCommand(sqlSelectArtwork, con);
            //cmdArt. Parameters. AddWithValue ("@galleryID", galleryID);

            //con. Open ();
            //Repeater1. DataSource = cmdArt. ExecuteScalar ();
            //con. Close ();
        }

        public string GetImage ( object img )
        {
            return "data:image/jpg;base64," + Convert. ToBase64String (( byte [ ] ) img);
        }

        protected void btnBackGallery_Click ( object sender, EventArgs e )
        {
            Response. Redirect ("GalleryDisplay.aspx");
        }
    }
}