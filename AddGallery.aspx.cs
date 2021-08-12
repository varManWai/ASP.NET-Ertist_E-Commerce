using System;
using System. Collections. Generic;
using System. Configuration;
using System. Data;
using System. Data. SqlClient;
using System. IO;
using System. Linq;
using System. Web;
using System. Web. UI;
using System. Web. UI. WebControls;

namespace Ertist
{
    public partial class AddGallery : System. Web. UI. Page
    {
        protected void btnAddGal_Click ( object sender, EventArgs e )
        {
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            con = new SqlConnection (strCon);
            con. Open ();

            //if ( imgUpload. HasFile )
            //{
            //    string fileExt = Path.GetExtension(imgUpload.FileName);

            //    if ( fileExt == ".jpeg" || fileExt == ".jpg" || fileExt == ".png" || fileExt == ".gif" )
            //    {
                    byte[] imgbyte = imgUpload.FileBytes;
                    string insertGal = "INSERT INTO Gallery (name, date, cover, userID) VALUES(@name, GetDate(), @coverpic, @userid)";
                    SqlCommand cmd = new SqlCommand(insertGal, con);

                    //insert
                    string name = txtGalName.Text;
                    int userid = ( int ) Session["UserID"];

                    cmd. Parameters. AddWithValue ("@name", name);
                    cmd. Parameters. AddWithValue ("@coverpic", imgbyte);
                    cmd. Parameters. AddWithValue ("@userid", userid);

                    try
                    {
                        cmd. ExecuteNonQuery ();
                    }
                    catch ( Exception ex )
                    {
                        Response. Write (ex. Message);
                    }
            //    }
            //}
            //else
            //{
            //    lblErr. Text = "Please select an image";
            //}
            con.Close ();
            Response. Redirect ("EditGallery.aspx");
        }

        protected void btnCancel_Click ( object sender, EventArgs e )
        {
            //lblErr. Text = "";
            Response. Redirect ("EditGallery.aspx");
        }
    }
}