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
    public partial class uploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Display Image
            if (!this.IsPostBack)
            {
                string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(strCon))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM ArtWork", conn))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        Images.DataSource = dt;
                        Images.DataBind();
                    }
                }
            }

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

        //Upload Image
        protected void Button1_Click(object sender, EventArgs e)
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
                string sqlInsert = "INSERT INTO ArtWork (artworkID, name, price, description, picture, stock, available) VALUES(@artworkID, @name, @price, @description, @picture, @stock, @available)";

                //SqlCommand cmd = new SqlCommand("INSERT INTO ArtWork(image) VALUES(@image) WHERE [artID] = '4001'");

                //cmd.CommandType = CommandType.Text;


                //string query1 = "insert into Courses(CRN,CourseName,StudyLevel,Capacity,Instructor,Credits,Prerequisite) values (@crn, @cursename, @studylevel, @capacity, @instructor, @credits, @prerequesite)";

                SqlCommand cmd = new SqlCommand(sqlInsert, con);

                //insert
                int artworkID = Convert.ToInt32(artid.Text);
                string name = txtName.Text;
                string price = txtPrice.Text;
                string description = txtDesc.Text;
                string stock = txtStock.Text;
                string available = ddlAvailable.SelectedItem.Text;


                cmd.Parameters.AddWithValue("@artworkID", artworkID);
                cmd.Parameters.AddWithValue("@picture", imgbyte);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@price", price);
                cmd.Parameters.AddWithValue("@description", description);
                cmd.Parameters.AddWithValue("@stock", stock);
                cmd.Parameters.AddWithValue("@available", available);


                //add the rest

                cmd.ExecuteNonQuery();

            }


            con.Close();
        }

    }
}
