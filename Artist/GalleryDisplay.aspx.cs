using System;
using System.Collections.Generic;
using System. Configuration;
using System. Data. SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ertist
{
    public partial class GalleryDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection (strCon);
            string sqlSelect = "SELECT [name], [cover], [galleryID] FROM [Gallery] WHERE userID = @userid";
            SqlCommand cmd = new SqlCommand(sqlSelect, con);

            int userid = ( int ) Session["UserID"];

            con. Open ();

            cmd. Parameters. AddWithValue ("@userid", userid);
            Repeater1. DataSource = cmd. ExecuteReader ();
            Repeater1.DataBind ();

            con. Close ();
        }

        public string GetImage ( object img )
        {
            return "data:image/jpg;base64," + Convert. ToBase64String (( byte [ ] ) img);
        }

    }
}