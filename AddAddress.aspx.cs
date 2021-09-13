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
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            string sqlInsert = "INSERT INTO Address (addressName, address, state, city, postCode) VALUES(@addressName, @address, @state, @city, @postCode)";

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

            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("UserProfile.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }
    }
}