using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
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
            
            //Try to display user image at the dropdown list
            //if (Session["UserID"] != null)
            //{
            //    string userid = Session["UserID"].ToString();
            //    string sql = "Select picture from [User] where UserID = @userID";

            //    //Connect the db
            //    string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            //    SqlConnection con = new SqlConnection(strCon);
            //    SqlCommand cmd = new SqlCommand(sql, con);
            //    cmd.Parameters.AddWithValue("@userID", userid);

            //    //open the connection
            //    con.Open();

            //    //select use the execute reader
            //    SqlDataReader dr = cmd.ExecuteReader();

            //    //data binding
            //    if (dr.Read())
            //    {
            //        //The name doesnt exist in current content
            //        UserImage.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["picture"]);
                    
            //    }

            //    dr.Close();
            //    con.Close();
            //}
                
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