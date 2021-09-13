using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;

namespace Ertist
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public static string GetHash(string strPass)
        {
            byte[] binPass = Encoding.Default.GetBytes(strPass);

            SHA256 sha = SHA256.Create();
            byte[] binHash = sha.ComputeHash(binPass);
            string strHash = Convert.ToBase64String(binHash);

            return strHash;
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
                        string hashPass = GetHash(txtPwd.Text.Trim());
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", hashPass);
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
                        setDefaultImage(txtUsername.Text.Trim());
                        success = "Registration successful. User Id: " + userId.ToString();
                        //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + success + "');", true);
                        Response.Redirect(string.Format("~/Login.aspx?message={0}", success));
                        break;
                }
            }
        }


        protected void setDefaultImage(string userName)
        {

            //Connect the db
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);

            byte[] bytes = null;

            System.Drawing.Image defaultImage = System.Drawing.Image.FromFile(Server.MapPath("~/Image/userProfilePic.png"));
            using (MemoryStream ms = new MemoryStream())
            {
                defaultImage.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
                bytes = ms.ToArray();
            }

            string sql2 = @"update [User] set picture = @picture where username = @username";
            SqlCommand cmd2 = new SqlCommand(sql2, con);
            cmd2.Parameters.AddWithValue("@username", userName);
            cmd2.Parameters.AddWithValue("@picture", bytes);
            con.Open();
            cmd2.ExecuteNonQuery();

            con.Close();
        }


        protected void submitReg_Click(object sender, EventArgs e)
        {
            RegisterUser(sender, e);
        }
    }
}