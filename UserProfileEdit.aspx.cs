using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ertist
{
    public partial class UserProfileEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string userID = Request.QueryString["userID"] ?? "";
                string sql = "Select * from [User] where UserID = @userID";

                //Connect the db
                string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@userID", userID);

                //open the connection
                con.Open();

                //select use the execute reader
                SqlDataReader dr = cmd.ExecuteReader();

                //data binding
                if (dr.Read())
                {
                    user_picture.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["picture"]);
                    txtUsername.Text = (string)dr["username"];
                    txtDate.Text = (string)dr["createDate"].ToString();
                    txtFName.Text = (string)dr["fname"];
                    txtLName.Text = (string)dr["lname"];
                    txtBio.Text = (string)dr["bio"];
                    txtNo.Text = (string)dr["phoneNo"];
                    txtEmail.Text = (string)dr["email"];
                    ddlGender.SelectedValue = (string)dr["gender"].ToString();
                }

                dr.Close();
                con.Close();
            }

            
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            con = new SqlConnection(strCon);

            string userID = Request.QueryString["userID"] ?? "";
            string sql = @"update [User] set fname = @fname, lname = @lname, bio = @bio, gender = @gender, phoneNo = @phoneNo, email = @email where userID = @userID";

                SqlCommand cmd = new SqlCommand(sql, con);

                //insert
                string fname = txtFName.Text;
                string lname = txtLName.Text;
                string bio = txtBio.Text;
                string gender = ddlGender.SelectedItem.Text;
                string phoneNo = txtNo.Text;
                string email = txtEmail.Text;
                
                cmd.Parameters.AddWithValue("@fname", fname);
                cmd.Parameters.AddWithValue("@lname", lname) ;
                cmd.Parameters.AddWithValue("@bio", bio);
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@phoneNo", phoneNo);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@userID", userID);

                con.Open();
                cmd.ExecuteNonQuery(); //use in update, insert, delete

            if (FileUpload1.HasFile)
            {

                byte[] imgbyte = FileUpload1.FileBytes;

                string sql2 = @"update [User] set picture = @picture where userID = @userID";
                SqlCommand cmd2 = new SqlCommand(sql2, con);
                cmd2.Parameters.AddWithValue("@userID", userID);

                cmd2.Parameters.AddWithValue("@picture", imgbyte);
                cmd2.ExecuteNonQuery();

            }
            
            con.Close();

            Response.Redirect("UserProfile.aspx");

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }
    }
}