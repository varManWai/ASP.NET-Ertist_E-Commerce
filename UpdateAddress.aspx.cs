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
    public partial class UpdateAddress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string addressID = Request.QueryString["addressID"] ?? "";
                string sql = "Select * from Address where addressID = @addressID";

                //Connect the db
                string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@addressID", addressID);

                //open the connection
                con.Open();

                //select use the execute reader
                SqlDataReader dr = cmd.ExecuteReader();

                //data binding
                if (dr.Read())
                {
                    txtAddressID.Text = (string)dr["addressID"].ToString();
                    txtAddressName.Text = (string)dr["addressName"];
                    txtAddress.Text = (string)dr["address"];
                    txtState.Text = (string)dr["state"];
                    txtCity.Text = (string)dr["city"];
                    txtPostCode.Text = (string)dr["postCode"].ToString();

                }

                dr.Close();
                con.Close();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string addressID = txtAddressID.Text;
            string addressName = txtAddressName.Text;
            string address = txtAddress.Text;
            string state = txtState.Text;
            string city = txtCity.Text;
            string postCode = txtPostCode.Text;


            string sql = @"update Address set addressName = @addressName, address = @address, state = @state, city = @city, postCode = @postCode where addressID = @addressID";
            //Connection
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@addressID", addressID);
            cmd.Parameters.AddWithValue("@addressName", addressName);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@postCode", postCode);

            con.Open();
            cmd.ExecuteNonQuery(); //use in update, insert, delete
            con.Close();

            Response.Redirect("UserProfile.aspx");
        }
    
    }
}