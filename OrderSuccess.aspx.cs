using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace Ertist
{
    public partial class OrderSuccess : System.Web.UI.Page
    {
        public static int int1 = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                insertOrder();
                
            }
        }
        public int UpdateArtwork(int productId)
        {

            string sql = @"UPDATE Artwork SET available = @available, stock = @stock FROM ARTWORK where artworkID = @artworkID";
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@available", "Not Available");
            cmd.Parameters.AddWithValue("@stock", 0);
            cmd.Parameters.AddWithValue("@artworkID", productId);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            return 1;

        }

        public void insertOrder()
        {


            string sql = @"INSERT INTO[Order] (status, totalPrice,date , shippingFee, addressID, userID) VALUES(N'Preparing', @totalPrice,GetDate(), 4.99, @addressId, @userId)";
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@totalPrice", (Convert.ToDouble(Session["payment"]) + 4.99));
            cmd.Parameters.AddWithValue("@addressId", Session["addressID"] );
            cmd.Parameters.AddWithValue("@userId", Session["UserID"]);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        
        public static int getId(object data)
        {

            return Convert.ToInt32(data);
        }

        public int clearCart(int artworkId)
        {
            string sql = @"DELETE FROM Cart Where artworkID = @artworkID AND userID = @userID";
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@artworkID", artworkId);
            cmd.Parameters.AddWithValue("@userID", Session["userID"]);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            return 1;
        }


        public int insertOrderArtwork(int artworkID)
        {
            string sql = @"INSERT INTO Order_Artwork(orderID, artworkID) VALUES (@orderID, @artworkID)";
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("@orderID", Session["orderId"]);
            cmd.Parameters.AddWithValue("@artworkID", artworkID);

            

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            return 1;
        }

        public void sendEmail()
        {

            string emailSender = ConfigurationManager.AppSettings["username"].ToString();
            string emailSenderPassword = ConfigurationManager.AppSettings["password"].ToString();
            string emailSenderHost = ConfigurationManager.AppSettings["smtp"].ToString();
            int emailSenderPort = Convert.ToInt16(ConfigurationManager.AppSettings["portnumber"]);
            Boolean emailIsSSL = Convert.ToBoolean(ConfigurationManager.AppSettings["IsSSL"]);


            //Fetching Email Body Text from EmailTemplate File.  
            string FilePath = HttpContext.Current.Request.MapPath("~/Email.html");
            StreamReader str = new StreamReader(FilePath);
            string MailText = str.ReadToEnd();
            str.Close();

            //Repalce [newusername] = signup user name   
            MailText = MailText.Replace("[Username]", Convert.ToString(Session["username"]));

            MailText = MailText.Replace("[orderID]", Convert.ToString(Session["orderId"]));
            MailText = MailText.Replace("[orderDate]", Convert.ToString(Session["orderDate"]));

            MailText = MailText.Replace("[Total]", "$" + (Convert.ToDouble(Session["payment"]) + 4.99));




            string subject = "Ordered Seccuesfully";

            //Base class for sending email  
            MailMessage _mailmsg = new MailMessage();

            //Make TRUE because our body text is html  
            _mailmsg.IsBodyHtml = true;

            //Set From Email ID  
            _mailmsg.From = new MailAddress(emailSender);

            //Set To Email ID  
            _mailmsg.To.Add((string)Session["email"]);

            //Set Subject  
            _mailmsg.Subject = subject;

            //Set Body Text of Email   
            _mailmsg.Body = MailText;


            //Now set your SMTP   
            SmtpClient _smtp = new SmtpClient();

            //Set HOST server SMTP detail  
            _smtp.Host = emailSenderHost;

            //Set PORT number of SMTP  
            _smtp.Port = emailSenderPort;

            //Set SSL --> True / False  
            _smtp.EnableSsl = emailIsSSL;

            //Set Sender UserEmailID, Password  
            NetworkCredential _network = new NetworkCredential(emailSender, emailSenderPassword);
            _smtp.Credentials = _network;

            //Send Method will send your MailMessage create above.  
            _smtp.Send(_mailmsg);
        }
    }
}