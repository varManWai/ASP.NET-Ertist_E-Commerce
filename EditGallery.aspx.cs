﻿using System;
using System. Collections. Generic;
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

        protected void btnAddGallery_Click ( object sender, EventArgs e )
        {
            Response. Redirect ("AddGallery.aspx");
        }
    }
}