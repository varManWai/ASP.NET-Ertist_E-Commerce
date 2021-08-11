using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ertist
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MasterLoginStatus_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Session["UserID"] = null;
            Session["roles"] = null;
            Session.Remove("UserID");
        }

    }
}