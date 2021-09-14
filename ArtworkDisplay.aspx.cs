using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Ertist
{
    public partial class Description : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string pagequery = " offset 0 rows FETCH NEXT 12 rows only﻿";  //Initially fetch the first 10 rows
            int page = 1; //Initialize page no 1
            int rowRemove = 12; // Rows to remove for next paging
            int pagesize = 12; //No of rows in a page

            if (!string.IsNullOrEmpty(Request.QueryString["pn"]))  //checks if query string [pn] is empty or no
            {
                page = Request.QueryString["pn"] == null ? 1 : Convert.ToInt32(Request.QueryString["pn"]);  //if not empty assign page=[pn]
                rowRemove = (rowRemove * Convert.ToInt32(page)) - 12; //calculate on removing the no of rows from the record
                pagequery = " offset " + rowRemove + " rows FETCH NEXT 12 rows only﻿"; //Fetch the next 10 rows after removing
            }

            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings ["ertistDB"].ConnectionString;
            con = new SqlConnection (strCon);
            SqlCommand cmdRepeater=null;
            SqlCommand cmdRepeaterCond=null;

            string categoryID = "";
            string alphabet = "";
            int count;

            if (!Page.IsPostBack) {
                categoryID = Request.QueryString ["categoryID"] ?? "";
                alphabet = Request.QueryString ["alphabet"] ?? "";
            }

            if(categoryID=="" && alphabet == "") {
                cmdRepeater = new SqlCommand ("SELECT[artworkID], [name], [description], [picture], [price], [height], [width] FROM[ArtWork] order by artworkID Asc" + pagequery, con);  //Select the records
                con.Open ();
                SqlDataAdapter da = new SqlDataAdapter (cmdRepeater);
                DataSet ds = new DataSet ();
                da.Fill (ds);
                con.Close ();
                if (ds.Tables.Count > 0 && ds.Tables [0].Rows.Count > 0) {
                    Repeater1.DataSource = ds;
                    Repeater1.DataBind ();  //Bind the repeater
                    cmdRepeater = new SqlCommand ("select COUNT(*) from Artwork", con);  //Count the total records
                }
                con.Open ();
                count = ( int )cmdRepeater.ExecuteScalar ();
                con.Close ();
            }else if (categoryID != "" && alphabet=="") {
                cmdRepeaterCond = new SqlCommand ("SELECT[artworkID], [name], [description], [picture], [price], [height], [width] FROM[ArtWork] WHERE categoryID = @categoryID ORDER BY artworkID Asc" + pagequery, con);  //Select the records
                con.Open ();
                cmdRepeaterCond.Parameters.AddWithValue ("@categoryID", categoryID);
                Repeater1.DataSource = cmdRepeaterCond.ExecuteReader ();
                Repeater1.DataBind ();  //Bind the repeater
                con.Close ();
                cmdRepeaterCond = new SqlCommand ("select COUNT(*) from Artwork WHERE categoryID = @categoryID", con);
                con.Open ();
                cmdRepeaterCond.Parameters.AddWithValue ("@categoryID", categoryID);
                count = ( int )cmdRepeaterCond.ExecuteScalar ();
                con.Close ();
            }else if (alphabet != "" && categoryID=="") {
                cmdRepeaterCond = new SqlCommand ("SELECT[artworkID], [name], [description], [picture], [price], [height], [width] FROM[ArtWork] WHERE ([name] LIKE @alphabet + '%') ORDER BY artworkID Asc" + pagequery, con);  //Select the records
                con.Open ();
                cmdRepeaterCond.Parameters.AddWithValue ("@alphabet", alphabet);
                Repeater1.DataSource = cmdRepeaterCond.ExecuteReader ();
                Repeater1.DataBind ();  //Bind the repeater
                con.Close ();
                cmdRepeaterCond = new SqlCommand ("select COUNT(*) from Artwork WHERE ([name] LIKE @alphabet + '%')", con);
                con.Open ();
                cmdRepeaterCond.Parameters.AddWithValue ("@alphabet", alphabet);
                count = ( int )cmdRepeaterCond.ExecuteScalar ();
                con.Close ();
            }
            else {
                count = 0;
            }
                var uri = new Uri (Request.Url.AbsoluteUri);
                var query = HttpUtility.ParseQueryString (uri.Query); //Get the query strings from the url
                query.Remove ("pn"); //Remove the query string [pn] to avoid repetation
                string link = HttpContext.Current.Request.Url.AbsolutePath + "?" + query;
                paging.InnerHtml = Set_Paging (page, pagesize, count, "activeLink", link, "disableLink");  
            //Fill the pagination in the div tag

            //Display category in DDl
            string selectCat = "SELECT [name], [categoryID] FROM [Category]";
            SqlCommand cmd = new SqlCommand (selectCat, con);

            con.Open ();

            Repeater2.DataSource = cmd.ExecuteReader ();
            Repeater2.DataBind ();

            con.Close ();


        }

        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }

        public string Set_Paging(Int32 PageNumber, int PageSize, Int64 TotalRecords, string ClassName, string PageUrl, string DisableClassName)
        {
            string ReturnValue = "";
            try
            {
                Int64 TotalPages = Convert.ToInt64(Math.Ceiling((double)TotalRecords / PageSize));
                if (PageNumber > 1)
                {
                    if (PageNumber == 2)
                        ReturnValue = ReturnValue + "<a href='" + PageUrl.Trim() + "?pn=" + Convert.ToString(PageNumber - 1) + "' class='" + ClassName + "'> Prev </a>&nbsp;&nbsp;&nbsp;";
                    else
                    {
                        ReturnValue = ReturnValue + "<a href='" + PageUrl.Trim();
                        if (PageUrl.Contains("?"))
                            ReturnValue = ReturnValue + "&";
                        else
                            ReturnValue = ReturnValue + "?";
                        ReturnValue = ReturnValue + "pn=" + Convert.ToString(PageNumber - 1) + "' class='" + ClassName + "'> Prev </a>&nbsp;&nbsp;&nbsp;";
                    }
                }
                else
                    ReturnValue = ReturnValue + "<span class='" + DisableClassName + "'> Prev </span>&nbsp;&nbsp;&nbsp;";
                if ((PageNumber - 4) > 1)
                    ReturnValue = ReturnValue + "<a href='" + PageUrl.Trim() + "' class='" + ClassName + "'>1</a>&nbsp;.....&nbsp;&nbsp;";
                for (int i = PageNumber - 3; i <= PageNumber; i++)
                    if (i >= 1)
                    {
                        if (PageNumber != i)
                        {
                            ReturnValue = ReturnValue + "<a href='" + PageUrl.Trim();
                            if (PageUrl.Contains("?"))
                                ReturnValue = ReturnValue + "&";
                            else
                                ReturnValue = ReturnValue + "?";
                            ReturnValue = ReturnValue + "pn=" + i.ToString() + "' class='" + ClassName + "'>" + i.ToString() + "</a>";
                        }
                        else
                        {
                            ReturnValue = ReturnValue + "<span style='font-weight: bold; background-color: #ff0600; color: #fff; padding: 5px; border-radius: 3px;'>" + i + "</span>";
                        }
                    }
                for (int i = PageNumber + 1; i <= PageNumber + 4; i++)
                    if (i <= TotalPages)
                    {
                        if (PageNumber != i)
                        {
                            ReturnValue = ReturnValue + "<a href='" + PageUrl.Trim();
                            if (PageUrl.Contains("?"))
                                ReturnValue = ReturnValue + "&";
                            else
                                ReturnValue = ReturnValue + "?";
                            ReturnValue = ReturnValue + "pn=" + i.ToString() + "' class='" + ClassName + "'>" + i.ToString() + "</a>";
                        }
                        else
                        {
                            ReturnValue = ReturnValue + "<span style='font-weight:bold;'>" + i + "</span>";
                        }
                    }
                if ((PageNumber + 3) < TotalPages)
                {
                    ReturnValue = ReturnValue + ".....&nbsp;<a href='" + PageUrl.Trim();
                    if (PageUrl.Contains("?"))
                        ReturnValue = ReturnValue + "&";
                    else
                        ReturnValue = ReturnValue + "?";
                    ReturnValue = ReturnValue + "pn=" + TotalPages.ToString() + "' class='" + ClassName + "'>" + TotalPages.ToString() + "</a>";
                }
                if (PageNumber < TotalPages)
                {
                    ReturnValue = ReturnValue + "<a href='" + PageUrl.Trim();
                    if (PageUrl.Contains("?"))
                        ReturnValue = ReturnValue + "&";
                    else
                        ReturnValue = ReturnValue + "?";
                    ReturnValue = ReturnValue + "pn=" + Convert.ToString(PageNumber + 1) + "' class='" + ClassName + "'> Next </a>";
                }
                else
                    ReturnValue = ReturnValue + "<span class='" + DisableClassName + "'> Next </span>";
            }
            catch (Exception ex)
            {
            }
            return (ReturnValue);
        }

        protected void searchByName_TextChanged (object sender, EventArgs e) {
            
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings ["ertistDB"].ConnectionString;
            con = new SqlConnection (strCon);
            SqlCommand cmdSearch = null;

            con.Open ();

            string selectSearch = "[artworkID], [name], [description], [picture], [price], [height], [width] FROM[ArtWork] WHERE ([name] LIKE '%' + @search + '%') ORDER BY artworkID Asc" + pagequery;
            cmdSearch = new SqlCommand (selectSearch, con);
            string searchInput = searchByName.Text;

            cmdSearch.Parameters.AddWithValue ("@search", searchInput);
            cmdSearch.ExecuteNonQuery ();

            Repeater1.DataSource = cmdSearch.ExecuteReader ();
            Repeater1.DataBind ();  //Bind the repeater

            con.Close ();
        }
    }
}