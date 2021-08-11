using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace Ertist
{
    public partial class AddArtwork : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////Display Image
            //if (!this.IsPostBack)
            //{
            //    string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            //    using (SqlConnection conn = new SqlConnection(strCon))
            //    {
            //        using (SqlDataAdapter sda = new SqlDataAdapter("SELECT Artwork.artworkID, Artwork.name, Artwork.price, Artwork.description, Artwork.picture, Artwork.date, Artwork.stock, Artwork.available, Artwork.categoryID, Artwork.galleryID, Category.name AS Expr1, Gallery.name AS Expr2 FROM Artwork INNER JOIN Category ON Artwork.categoryID = Category.categoryID INNER JOIN Gallery ON Artwork.galleryID = Gallery.galleryID", conn))
            //        {
            //            DataTable dt = new DataTable();
            //            sda.Fill(dt);
            //            Images.DataSource = dt;
            //            Images.DataBind();
            //        }
            //    }
            //}

        }

        //Display Image
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["picture"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddArtwork.aspx");
        }
    }
}