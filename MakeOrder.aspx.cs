﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Ertist
{
    public partial class MakeOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //display image in repeater
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            con = new SqlConnection(strCon);

            //open connection
            con.Open();

            string sqlSelect = "SELECT Artwork.artworkID, Artwork.name, Artwork.price, Artwork.description, Artwork.picture, Cart.cartID, [User].username, [User].picture AS Expr1 FROM Artwork INNER JOIN Cart ON Artwork.artworkID = Cart.artworkID INNER JOIN [User] ON Cart.userID = [User].UserID AND [User].UserID = 6";

            SqlCommand cmd = new SqlCommand(sqlSelect, con);

            Repeater1.DataSource = cmd.ExecuteReader();
            Repeater1.DataBind();



            DataSet ds = GetData_1();

            Repeater2.DataSource = ds;
            Repeater2.DataBind();



            //string sqlSelect2 = "SELECT SUM(Artwork.price) AS Expr2, Artwork.price, Wishlist.artworkID, Wishlist.userID, [User].UserID AS Expr3 FROM Artwork INNER JOIN Wishlist ON Artwork.artworkID = Wishlist.artworkID INNER JOIN [User] ON Wishlist.userID = [User].UserID AND [User].UserID = 6 GROUP BY Artwork.price, Wishlist.artworkID, Wishlist.userID, [User].UserID";

            //close connection

            DataSet ds2 = GetData_2();

            Repeater3.DataSource = ds2;
            Repeater3.DataBind();

            DataSet ds3 = GetData_3();

            Repeater4.DataSource = ds3;
            Repeater4.DataBind();

            con.Close();
        }

        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }

        private DataSet GetData_1()
        {
            string CS = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT Artwork.artworkID, Artwork.name, Artwork.price, Artwork.description, Artwork.picture, Cart.cartID, [User].username, [User].picture AS Expr1 FROM Artwork INNER JOIN Cart ON Artwork.artworkID = Cart.artworkID INNER JOIN [User] ON Cart.userID = [User].UserID AND [User].UserID = 6", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }

        private DataSet GetData_2()
        {
            string CS = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT SUM(Artwork.price) AS Expr1, Cart.userID FROM Artwork INNER JOIN [User] ON [User].UserID = 6 INNER JOIN Cart ON Artwork.artworkID = Cart.artworkID AND [User].UserID = Cart.userID GROUP BY Cart.userID", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }

        private DataSet GetData_3()
        {
            string CS = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT Address.addressName FROM [User] INNER JOIN User_Address ON [User].UserID = User_Address.userID INNER JOIN Address ON User_Address.addressID = Address.addressID AND [User].UserID = 6", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
    }
}