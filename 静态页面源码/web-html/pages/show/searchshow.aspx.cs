using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using City_Web.model;
using City_Web.Service;
using System.Collections;

namespace City_Web.静态页面源码.web_html.pages.show
{
    public partial class searchshow : System.Web.UI.Page
    {
        int searchtype = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
           

          

            if (!Page.IsPostBack)
            {
                DropDownList_Type.SelectedValue = Request.QueryString["typeid"];
                TextBox_Keys.Text = Request.QueryString["keys"];
                searchtype = Convert.ToInt32( Request.QueryString["searchtype"]);
                GridView_Info.AutoGenerateColumns = false;
                fillInfoType();              
                showData();

            }
        }
        private void showData()
        {
            TBInfoService infoService = new TBInfoService();
            int typeId = Convert.ToInt32(DropDownList_Type.SelectedValue);
            string key = TextBox_Keys.Text.Trim();
            ArrayList list = infoService.GetInfoList(typeId, key, 0,-1,searchtype);
            GridView_Info.DataSource = list;
            GridView_Info.DataBind();
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
       
        protected void Button_Search_Click(object sender, EventArgs e)
        {
            showData();
        }

    }
}