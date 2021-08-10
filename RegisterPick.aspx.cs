using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ertist
{
    public partial class RegisterPick : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_user_Click(object sender, EventArgs e)
        {
            string role = "user";
            Response.Redirect(string.Format("~/Register.aspx?role={0}", role));
        }

        protected void btn_artist_Click(object sender, EventArgs e)
        {
            string role = "artist";
            Response.Redirect(string.Format("~/Register.aspx?role={0}", role));
        }
    }
}