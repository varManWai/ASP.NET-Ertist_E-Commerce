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
    public partial class DeleteAddress : System.Web.UI.Page
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

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            int addressID = Convert.ToInt32(txtAddressID.Text);
            string sql = "DELETE from Address where addressID = @addressID";
            //string sql = "DELETE User_Address FROM Address INNER JOIN User_Address ON Address.addressID = User_Address.addressID where Address.addressID = @addressID";
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@addressID", addressID);

            con.Open();
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
