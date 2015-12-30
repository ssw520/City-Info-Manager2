using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using City_Web.model;
using City_Web.Service;
using System.Collections;

namespace City_Web.静态页面源码.web_html.pages.admin.view
{
    public partial class right : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fillInfoType();
        }
        private void fillInfoType()
        {
            TBTypeService tbService = new TBTypeService();
            ArrayList list = tbService.GetTBTypeList();
            TBType temp = new TBType();
            temp.Id = 0;
            temp.TypeIntro = "全部信息";
            list.Insert(0, temp);
            DropDownList_Type.DataSource = list;
            DropDownList_Type.DataTextField = "TypeIntro";
            DropDownList_Type.DataValueField = "Id";
            DropDownList_Type.DataBind();

        }

        protected void Button_Display_Click(object sender, EventArgs e)
        {

        }

    }
}