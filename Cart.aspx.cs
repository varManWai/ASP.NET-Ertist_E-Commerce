using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Ertist
{
    public partial class Cart : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }

        public Double getTotal(object data)
        {
            try
            {
                return (Convert.ToDouble(data) + 4.99);
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string cartID = btn.Attributes["CustomParameter"].ToString();
            string sql = "DELETE from Cart where cartID = @cartID";
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@cartID", cartID);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Cart.aspx");
        }
    }
}