using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ertist
{
    public partial class SiteMaster : MasterPage
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string connectionString = WebConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
        SqlConnection cnn;
        protected void Page_Load(object sender, EventArgs e)
        {

            
            
        }


        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }

        protected void MasterLoginStatus_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Session["UserID"] = null;
            Session["roles"] = null;
            Session.Remove("UserID");
            Session.RemoveAll();
        }

    }
}