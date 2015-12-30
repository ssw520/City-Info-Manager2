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
    public partial class left : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            form1.Target = "_blank";
            if (!Page.IsPostBack) { fillInfoType(); }
           
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

       
        protected void Button_Search_Click1(object sender, EventArgs e)
        {
            int typeid = Convert.ToInt32(DropDownList_Type.SelectedValue);
            string keys = TextBox_Keys.Text.Trim();
            int searchtype = 0;
            if (RadioButton_All.Checked == true)
            {
                searchtype = 1;
            }
          
            Response.Redirect("../pages/show/searchshow.aspx?"+
            "keys="+keys+"&typeid="+typeid+"&searchType="+searchtype);
          
        }

    }
}