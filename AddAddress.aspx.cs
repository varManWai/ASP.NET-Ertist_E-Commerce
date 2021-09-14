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
    public partial class AddAddress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string userID = Session["UserID"].ToString();
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            string sqlInsert = "INSERT INTO Address (addressName, address, state, city, postCode, userID) VALUES(@addressName, @address, @state, @city, @postCode, @userID)";

            SqlCommand cmd = new SqlCommand(sqlInsert, con);

            string addressName = txtAddressName.Text;
            string address = txtAddress.Text;
            string state = txtCity.Text;
            string city = txtState.Text;
            string postCode = txtPostCode.Text;

            cmd.Parameters.AddWithValue("@addressName", addressName);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@postCode", postCode);
            cmd.Parameters.AddWithValue("@userID", userID);

            cmd.ExecuteNonQuery();

            con.Close();

            //con.Open();

            //string userID = Session["UserID"].ToString();
            //string addressID = Request.QueryString["addressID"] ?? "";
            //string sql = "INSERT INTO User_Address (userID, addressID) values(@userID, @addressID)";
            //SqlCommand cmdUser = new SqlCommand(sql, con);
            ////SqlDataReader dr = cmdUser.ExecuteReader();

            ////if (dr.Read()) {
            ////    txtAddressID.Text = (string)dr["addressID"].ToString();
            ////}

            ////string addressID = txtAddressID.Text;
            
            //cmdUser.Parameters.AddWithValue("@addressID", addressID);
            //cmdUser.Parameters.AddWithValue("@userID", userID);

            //cmdUser.ExecuteNonQuery();

            ////dr.Close();
            //con.Close();
            //con.Open();
            //string sqlID = "INSERT INTO [User Address](userID) VALUES (@userID)";
            //SqlCommand cmdID = new SqlCommand(sqlID, con);
            //cmdID.Parameters.AddWithValue("@userID", userid);
            //cmdID.ExecuteNonQuery();
            //con.Close();

            Response.Redirect("UserProfile.aspx");

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }
    }

}