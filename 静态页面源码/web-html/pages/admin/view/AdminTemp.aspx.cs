﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace City_Web.静态页面源码.web_html.pages.admin.view
{
    public partial class AdminTemp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Users"] == null)
            {
                Response.Redirect("../login.aspx");
            }
        }
    }
}