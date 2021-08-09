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
    public partial class AddArtwork1 : System.Web.UI.Page
    {
        //Upload Image
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();

            //upload 
            if (FileUpload1.HasFile)
            {
                byte[] imgbyte = FileUpload1.FileBytes;

                //string sqlUpdate = "UPDATE ArtWork set [image] = @image WHERE [artID] = @id";
                string sqlInsert = "INSERT INTO ArtWork (artworkID, name, price, description, picture, date, stock, available, categoryID, galleryID) VALUES(@artworkID, @name, @price, @description, @picture, GetDate(), @stock, @available, @categoryID, @galleryID)";

                //SqlCommand cmd = new SqlCommand("INSERT INTO ArtWork(image) VALUES(@image) WHERE [artID] = '4001'");

                //cmd.CommandType = CommandType.Text;


                //string query1 = "insert into Courses(CRN,CourseName,StudyLevel,Capacity,Instructor,Credits,Prerequisite) values (@crn, @cursename, @studylevel, @capacity, @instructor, @credits, @prerequesite)";

                SqlCommand cmd = new SqlCommand(sqlInsert, con);

                //insert
                int artworkID = Convert.ToInt32(artid.Text);
                string name = txtName.Text;
                string price = txtPrice.Text;
                string description = txtDesc.Text;
                int stock = 1;
                string available = ddlAvailable.SelectedItem.Text;
                //int painting = 1;
                //int ink = 2;
                //int watercolour = 3;
                string category = ddlCategory.SelectedValue;
                string gallery = ddlGallery.SelectedValue;
                //string galleryID = ddlGallery.SelectedItem.Text;

                cmd.Parameters.AddWithValue("@artworkID", artworkID);
                cmd.Parameters.AddWithValue("@picture", imgbyte);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@price", price);
                //cmd.Parameters.AddWithValue("@date", DateTime.Now);
                cmd.Parameters.AddWithValue("@description", description);
                cmd.Parameters.AddWithValue("@stock", Convert.ToInt32(stock));
                cmd.Parameters.AddWithValue("@available", available);
                cmd.Parameters.AddWithValue("@categoryID", category);
                cmd.Parameters.AddWithValue("@galleryID", gallery);
                //if (ddlCategory.SelectedItem.Text.Equals("Painting"))
                //{
                //    cmd.Parameters.AddWithValue("@categoryID", Convert.ToInt32(painting));

                //}
                //else if (ddlCategory.SelectedItem.Text.Equals("Ink"))
                //{
                //    cmd.Parameters.AddWithValue("@categoryID", Convert.ToInt32(ink));

                //}
                //else if (ddlCategory.SelectedItem.Text.Equals("Watercolour"))
                //{
                //    cmd.Parameters.AddWithValue("@categoryID", Convert.ToInt32(watercolour));
                //}

                

                //add the rest

                cmd.ExecuteNonQuery();

            }


            con.Close();
            Response.Redirect("EditArtwork.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditArtwork.aspx");
        }
    }
}