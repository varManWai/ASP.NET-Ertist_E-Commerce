using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Ertist
{
    public partial class EmailControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            MailMessage message = new MailMessage();
            message.From = new MailAddress("ertist@mail.com");
            message.Subject = txtSubjext.Text;

            message.Body = "Sender Name: " + txtName.Text + "\nSender Email: " + txtFrom.Text.Trim() + "\nBody: " + txtBody.Text;
            message.To.Add(new MailAddress("laizoke98@gmail.com", "ERTIST"));
            SmtpClient mySmtpClient = new SmtpClient();
            mySmtpClient.Timeout = 30000;
            try
            {
                mySmtpClient.Send(message);
                lblResult.Text = "Mail successfully sent!";

            }catch(Exception exp)
            {
                lblResult.Text = exp.Message;
            }
        }

    }
}