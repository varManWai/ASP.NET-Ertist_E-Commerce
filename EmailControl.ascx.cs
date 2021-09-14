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
            string name = txtName.Text;
            string email = txtFrom.Text.Trim();
            MailMessage message = new MailMessage();
            message.From = new MailAddress(email, name);
            message.Subject = txtSubjext.Text;
            message.Body = txtBody.Text;
            message.To.Add(new MailAddress("lohxy-wm19@student.tarc.edu.my", "hostname"));
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