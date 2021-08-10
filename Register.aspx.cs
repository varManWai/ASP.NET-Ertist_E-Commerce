using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ertist
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RegisterUser(object sender, EventArgs e)
        {
            int userId = 0;
            string role = Request.QueryString["role"];
            int roleId = Convert.ToInt32(role);
            string constr = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Insert_User"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", txtPwd.Text.Trim());
                        cmd.Parameters.AddWithValue("@RoleID", roleId);
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }

                string success = string.Empty;

                switch (userId)
                {
                    case -1:
                        message.Text = "Username already exists.\n Please choose a different username.";
                        break;
                    case -2:
                        message.Text = "Supplied email address has already been used.";
                        break;
                    default:
                        success = "Registration successful. User Id: " + userId.ToString();
                        //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + success + "');", true);
                        Response.Redirect(string.Format("~/Login.aspx?message={0}", success));
                        break;
                }
            }
        }

        protected void submitReg_Click(object sender, EventArgs e)
        {
            RegisterUser(sender, e);
        }
    }
}