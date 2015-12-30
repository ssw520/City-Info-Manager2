using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using City_Web.model;
using City_Web.Service;

namespace City_Web.静态页面源码.web_html.pages.add
{
    public partial class addInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) { showTypeData(); }

        }
        private void showTypeData()
        {
            TBTypeService tbService = new TBTypeService();
            ArrayList list = tbService.GetTBTypeList();
            DropDownList1.DataSource = list;
            DropDownList1.DataTextField = "TypeIntro";
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataBind();
        }

        protected void Button_OK_Click(object sender, EventArgs e)
        {
            string TypeId = DropDownList1.SelectedValue;
            string title = TextBox_Title.Text;
            string content = TextBox_Content.Text;
            string phone = TextBox_Phone.Text;
            string linkMan = TextBox_Linkman.Text;
            string email = TextBox_Email.Text;

            TBInfo info = new TBInfo();
            info.InfoType = Convert.ToInt32(TypeId);
            info.InfoTitle = title;
            info.InfoContent = content;
            info.InfoLinkMan = linkMan;
            info.InfoEmail = email;
            info.InfoPhone = phone;
            info.InfoDate = string.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now);
            info.InfoState = 1;
            info.InfoPayFor = 0;

            TBInfoService infoService = new TBInfoService();
            int ok = infoService.AddTbInfo(info);
            if (0 < ok)
            {
                Labe_Message.Text = "<script> alert('发布成功');</script>";
            }
            else
            {

                Labe_Message.Text = "<script> alert('发布失败');</script>";
                Labe_Message.Text = DBHelper.Message;
            }
        }
    }
}