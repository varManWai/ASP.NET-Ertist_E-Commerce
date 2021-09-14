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
    public partial class UserProfile : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                if(Session["UserID"] != null)
                {   
                    string userid = Session["UserID"].ToString();
                    string sql = "Select * from [User] where UserID = @userID";

                    //Connect the db
                    string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
                    SqlConnection con = new SqlConnection(strCon);
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@userID", userid);

                    //open the connection
                    con.Open();

                    //select use the execute reader
                    SqlDataReader dr = cmd.ExecuteReader();

                    //data binding
                    if (dr.Read())
                    {
                        user_picture.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["picture"]);
                        lbl_username.Text = (string)dr["username"];
                        lbl_bio.Text = (string)dr["bio"];
                    }

                    dr.Close();
                    con.Close();

                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }
                
            }

        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            string userid = Session["UserID"].ToString();
            Response.Redirect(string.Format("~/UserProfileEdit.aspx?userID=" + userid));
        }

        protected void btnAddAddress_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddAddress.aspx");
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                //string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["picture"]);
                //(e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
        }
    }
}