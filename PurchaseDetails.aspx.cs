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
                string sql = "SELECT Artwork.name, [Order].orderID, [Order].totalPrice, Artwork.picture, Artwork.price, [Order].date, [User].lname + ' ' + [User].fname AS fullname, [User].phoneNo, [Order].shippingFee, [User].username, Address.addressName + ', ' + Address.address + ', ' + Address.state + ', ' + Address.city + ', ' AS fullAddress, Address.postCode FROM Artwork INNER JOIN Order_Artwork ON Artwork.artworkID = Order_Artwork.artworkID INNER JOIN [Order] ON Order_Artwork.orderID = [Order].orderID INNER JOIN [User] ON [Order].userID = [User].UserID INNER JOIN User_Address ON [User].UserID = User_Address.userID INNER JOIN Address ON [Order].addressID = Address.addressID AND User_Address.addressID = Address.addressID WHERE ([Order].orderID = @orderID)";

                //Connect the db
                string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@orderID", orderID);


                //open the connection
                con.Open();

                rptPurchase.DataSource = cmd.ExecuteReader();
                rptPurchase.DataBind();

                con.Close();

                con.Open();
                //select use the execute reader
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {


                    lblAddress.Text = (string)dr["fullAddress"];
                    lblPostCode.Text = Convert.ToString(dr["postCode"]);
                    lblShippingFee.Text = "$ " + Convert.ToString(dr["shippingFee"]);
                    lblTotalPrice.Text = "$ " + Convert.ToString(dr["totalPrice"]);
                    lblUserName.Text = (string)dr["username"];
                    lblContact.Text = (string)dr["phoneNo"];
                    lblflname.Text = (string)dr["fullname"];

                }

                dr.Close();
                con.Close();


               
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("PurchaseHistory.aspx");
        }

        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }
    }
}