using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ertist
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string messageReg = Request.QueryString["message"];
                message.Text = messageReg;

                if (this.Page.User.Identity.IsAuthenticated)
                {
                    FormsAuthentication.SignOut();
                    //Session["UserID"] = null;
                    //Session["roles"] = null;
                    //Session.Remove("UserID");
                    Session.RemoveAll();
                    Session.Abandon();
                    Session.Clear();
                    Request.Cookies.Clear();
                    Response.Redirect("~/Login.aspx");
                }
            }
        }

        protected void submitLogin_Click(object sender, EventArgs e)
        {
            ValidateUser(sender,e);
        }

        protected void ValidateUser(object sender, EventArgs e)
        {
            int userID = 0;
            string roles = string.Empty;
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            bool isPersistent = false;

            string constr = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Validate_User"))
                {
                    string hashPass = Register.GetHash(password);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", hashPass);
                    cmd.Connection = con;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    reader.Read();
                    userID = Convert.ToInt32(reader["userID"]);
                    roles = reader["Roles"].ToString();
                    con.Close();
                }

                switch (userID)
                {
                    case -1:
                        errorMsg.Text = "Login failed. Please check your user name and password and try again.";
                        break;
                    default:

                        Session["UserID"] = userID;
                        Session["roles"] = roles;

                        FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, username, DateTime.Now, DateTime.Now.AddMinutes(2880), isPersistent,roles, FormsAuthentication.FormsCookiePath);

                        // Encrypt the ticket.
                        string hash = FormsAuthentication.Encrypt(ticket);

                        // Create the cookie.
                        HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hash);

                        if (ticket.IsPersistent)
                        {
                            cookie.Expires = ticket.Expiration;
                        }
                        Response.Cookies.Add(cookie);

                        // Redirect back to original URL.
                        Response.Redirect(FormsAuthentication.GetRedirectUrl(username, isPersistent));
                        break;
                }
            }
        }
    }
}