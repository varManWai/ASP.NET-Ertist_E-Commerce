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
    public partial class PurchaseDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string orderID = Request.QueryString["orderID"] ?? "";                            
                string sql = "SELECT Artwork.name, [Order].date, [Order].orderID, [Order].totalPrice, Artwork.picture, [User].phoneNo, [Order].status, [Order].shippingFee, [User].username, Address.addressName+', '+Address.address+', '+Address.state+', '+Address.city+', ' as fullAddress ,Address.postCode  FROM Artwork INNER JOIN Order_Artwork ON Artwork.artworkID = Order_Artwork.artworkID INNER JOIN [Order] ON Order_Artwork.orderID = [Order].orderID INNER JOIN [User] ON [Order].userID = [User].UserID INNER JOIN User_Address ON [User].UserID = User_Address.userID INNER JOIN Address ON [Order].addressID = Address.addressID AND User_Address.addressID = Address.addressID WHERE ([Order].orderID = @orderID)";

                //Connect the db
                string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@orderID", orderID);


                //open the connection
                con.Open();

                //select use the execute reader
                SqlDataReader dr = cmd.ExecuteReader();

                //data binding
                if (dr.Read())
                {
                    lblID.Text = (string)dr["orderID"].ToString();
                    lblName.Text = (string)dr["name"];
                    //lblDate.Text = (string)dr["date"].ToString();
                    lblAddress.Text = (string)dr["fullAddress"];
                    lblPostCode.Text = Convert.ToString(dr["postCode"]);
                    lblShippingFee.Text = "$ " + Convert.ToString(dr["shippingFee"]);
                    lblTotalPrice.Text = "$ " + Convert.ToString(dr["totalPrice"]);
                    lblStatus.Text = (string)dr["status"];
                    
                }

                dr.Close();
                con.Close();


            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("PurchaseHistory.aspx");
        }
    }
}