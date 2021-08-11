using System;
using System. Collections. Generic;
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
        protected void Page_Load ( object sender, EventArgs e )
        {

        }

        protected void btnAddGal_Click ( object sender, EventArgs e )
        {
            if (imgUpload. PostedFile != null )
            {
                string fileExt =
               System.IO.Path.GetExtension(imgUpload.FileName);

                if ( fileExt != ".jpeg" && fileExt != ".jpg" && fileExt != ".png" && fileExt != ".gif" )
                {
                    lblError.Text = "Please select an image";


                    //string FileName = Path.GetFileName(imgUpload.PostedFile.FileName);

                    //Save files to disk
                    //imgUpload. SaveAs (Server. MapPath ("~/_PublicData/Images/" + FileName));

                    //Add Entry to DataBase
                    //String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["Computer_Klubben_CommunitySiteConnectionString"].ConnectionString;
                    //SqlConnection con = new SqlConnection(strConnString);
                    //string strQuery = "insert into dbo.Billeder (FileName, FilePath)" + " values(@FileName, @FilePath)";
                    //SqlCommand cmd = new SqlCommand(strQuery);
                    //cmd. Parameters. AddWithValue ("@FileName", FileName);
                    //cmd. Parameters. AddWithValue ("@FilePath", "~/_PublicData/Images/" + FileName);
                    //cmd. CommandType = CommandType.Text;
                    //cmd. Connection = con;

                    //try
                    //{
                    //    con. Open ();
                    //    cmd. ExecuteNonQuery ();
                    //}
                    //catch ( Exception ex )
                    //{
                    //    Response. Write (ex. Message);
                    //}

                    //finally
                    //{
                    //    con. Close ();
                    //    con. Dispose ();
                    //}
                }

            }

        }

        protected void btnCancel_Click ( object sender, EventArgs e )
        {
            lblError. Text = "";
        }
    }
}