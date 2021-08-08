using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Ertist
{
    public partial class PurchaseHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //display image in repeater
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            con = new SqlConnection(strCon);

            //open connection
            con.Open();

            string sqlSelect = "SELECT [orderID], [date], [totalPrice] FROM [Order]";
            //string sqlSelect = "SELECT Order.orderID, Order.date, Artwork.name FROM (([Order] INNER JOIN [Order Artwork] ON Order.orderID = ([Order Artwork].orderID)) INNER JOIN Artwork ON Artwork.artworkID = ([Order Artwork].orderID))";

            SqlCommand cmd = new SqlCommand(sqlSelect, con);

            Repeater1.DataSource = cmd.ExecuteReader();
            Repeater1.DataBind();

            //close connection
            con.Close();
        }
    }
}