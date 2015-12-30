using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using City_Web.Service;
using City_Web.model;
using System.Collections;

namespace City_Web.静态页面源码.web_html.view
{
    public partial class top : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            showTbType();
        }
        private void showTbType()
        {
            TBTypeService tbService = new TBTypeService();
            ArrayList list = tbService.GetTBTypeList();
            Repeater_TBType.DataSource = list;
            Repeater_TBType.DataBind();
        }
    }
}