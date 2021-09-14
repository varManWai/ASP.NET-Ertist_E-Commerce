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
    public partial class UpdateGallery : System. Web. UI. Page
    {
        protected void Page_Load ( object sender, EventArgs e )
        {
            if ( !Page. IsPostBack )
            {
                string galleryID = Request.QueryString["galleryID"] ?? "";
                string sql = "Select * from Gallery where galleryID = @galleryID";

                string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd. Parameters. AddWithValue ("@galleryID", galleryID);

                con. Open ();

                SqlDataReader dr = cmd.ExecuteReader();

                if ( dr. Read () )
                {
                    cover.ImageUrl = "data:image/jpg;base64," + Convert. ToBase64String (( byte [ ] ) dr [ "cover" ]);
                    txtGalName. Text = ( string ) dr [ "name" ];
                }
                dr. Close ();
                con. Close ();
            }
        }

        protected void btnCancel_Click ( object sender, EventArgs e )
        {
            Response. Redirect ("EditGallery.aspx");
        }

        protected void btnUpGal_Click ( object sender, EventArgs e )
        {
            string name = txtGalName.Text;
            string galleryID = Request.QueryString["galleryID"] ?? "";
            string sql=null;

            if ( imgUpload. HasFile )
            {
                sql = "UPDATE Gallery SET name = @name, cover = @coverpic WHERE galleryID = @galleryID";
            }
            else
            {
                sql = "UPDATE Gallery SET name = @name WHERE galleryID = @galleryID";
            }

            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd. Parameters. AddWithValue ("@name", name);
            cmd. Parameters. AddWithValue ("@galleryID", galleryID);

            if ( imgUpload. HasFile )
            {
                byte[] imgbyte = imgUpload.FileBytes;
                cmd. Parameters. AddWithValue ("@coverpic", imgbyte);
            }

            con. Open ();
            cmd. ExecuteNonQuery ();
            con. Close ();

            Response. Redirect ("EditGallery.aspx");
        }
    }
}