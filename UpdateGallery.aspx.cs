using System;
using System. Collections. Generic;
using System. Configuration;
using System. Data. SqlClient;
using System. Linq;
using System. Web;
using System. Web. UI;
using System. Web. UI. WebControls;

namespace Ertist
{
    public partial class UpdateGallery : System. Web. UI. Page
    {
        protected void Page_Load ( object sender, EventArgs e )
        {
            if ( !Page. IsPostBack )
            {
                string artworkID = Request.QueryString["artworkID"] ?? "";
                string sql = "Select * from Artwork where artworkID = @artworkID";

                string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd. Parameters. AddWithValue ("@artworkID", artworkID);

                con. Open ();

                SqlDataReader dr = cmd.ExecuteReader();

                if ( dr. Read () )
                {
                    //cover. ImageUrl = "data:image/jpg;base64," + Convert. ToBase64String (( byte [ ] ) dr [ "cover" ]);
                    //txtName. Text = ( string ) dr [ "name" ];
                }

                dr. Close ();
                con. Close ();
            }
        }

        protected void btnCancel_Click ( object sender, EventArgs e )
        {
            Response. Redirect ("EditGallery.aspx");
        }

        protected void btnUpGal_Click ( object sender, EventArgs e )
        {
            //int artworkID = Convert.ToInt32(artid.Text);
            //string name = txtName.Text;
            //string price = txtPrice.Text;
            //string description = txtDesc.Text;
            //int stock = Convert.ToInt32(txtStock.Text);
            //string available = ddlAvailable.SelectedItem.Text;
            //string category = ddlCategory.SelectedValue;
            //string gallery = ddlGallery.SelectedValue;


            //string sql = @"update Artwork set name = @name, price = @price, description = @description, available = @available, categoryID = @categoryID, galleryID = @galleryID where artworkID = @artworkID";

            ////Connection
            //string strCon = ConfigurationManager.ConnectionStrings["ertistDB"].ConnectionString;
            //SqlConnection con = new SqlConnection(strCon);
            //SqlCommand cmd = new SqlCommand(sql, con);

            //cmd. Parameters. AddWithValue ("@artworkID", artworkID);
            //cmd. Parameters. AddWithValue ("@name", name);
            //cmd. Parameters. AddWithValue ("@price", price);
            //cmd. Parameters. AddWithValue ("@description", description);
            //cmd. Parameters. AddWithValue ("@stock", stock);
            //cmd. Parameters. AddWithValue ("@available", available);
            //cmd. Parameters. AddWithValue ("@categoryID", category);
            //cmd. Parameters. AddWithValue ("@galleryID", gallery);

            //con. Open ();
            //cmd. ExecuteNonQuery (); //use in update, insert, delete
            //con. Close ();

            Response. Redirect ("EditArtwork.aspx");
        }
    }
}