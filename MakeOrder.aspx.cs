using System;
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string address = DropDownList1.SelectedItem.Value;
                Session["payment"] = null;
                Session["email"] = null;
                Response.Redirect(url: "Payment?Address=" + address);
            }
            catch (Exception er)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "Somethings went wrong", true);
            }

        }
    }
}