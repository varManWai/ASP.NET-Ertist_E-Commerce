using System;
using System. Collections. Generic;
using System. Data;
using System. Linq;
using System. Web;
using System. Web. UI;
using System. Web. UI. WebControls;

namespace Ertist
{
    public partial class EditGallery : System. Web. UI. Page
    {
        protected void Page_Load ( object sender, EventArgs e )
        {

        }

        protected void OnRowDataBound ( object sender, GridViewRowEventArgs e )
        {
            if ( e. Row. RowType == DataControlRowType. DataRow )
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["cover"]);
                ( e. Row. FindControl ("Image1") as Image ). ImageUrl = imageUrl;
            }
        }
        protected void btnAddGallery_Click ( object sender, EventArgs e )
        {
            Response. Redirect ("AddGallery.aspx");
        }
    }
}