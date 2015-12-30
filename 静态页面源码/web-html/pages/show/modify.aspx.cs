using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using City_Web.Service;
using City_Web.model;
using System.Collections;

namespace City_Web.静态页面源码.web_html.pages.show
{
    public partial class modify : System.Web.UI.Page
    {
        int Id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string idStr = Request.QueryString["Id"];

                if (idStr != null && idStr != string.Empty)
                {
                    try
                    {
                        Id = Convert.ToInt32(idStr);
                    }
                    catch
                    {
                        Id = -1;
                    }
                }
                HiddenField_Id.Value = Id.ToString();

                showTypeData();
                showInfo(Id);
            }           
           
        }
        private void showInfo(int id)
        {
            TBInfoService infoService = new TBInfoService();
            TBInfo info = infoService.GetTheNewInfoById(id);
            DropDownList_Type.SelectedValue = info.InfoType.ToString();
            TextBox_Title.Text = info.InfoTitle;
            TextBox_Content.Text = info.InfoContent;
            TextBox_Phone.Text = info.InfoPhone;
            TextBox_Email.Text = info.InfoEmail;
            TextBox_Linkman.Text = info.InfoLinkMan;

        }
        private void showTypeData()
        {
            TBTypeService tbService = new TBTypeService();
            ArrayList list = tbService.GetTBTypeList();
            DropDownList_Type.DataSource = list;
            DropDownList_Type.DataTextField = "TypeIntro";
            DropDownList_Type.DataValueField = "Id";
            DropDownList_Type.DataBind();
        }

        protected void Button_OK_Click(object sender, EventArgs e)
        {
            string typeId = DropDownList_Type.SelectedValue;
            string title = TextBox_Title.Text;
            string conntent = TextBox_Content.Text;
            string phone = TextBox_Phone.Text;
            string linkMan = TextBox_Linkman.Text;
            string email = TextBox_Email.Text;

            TBInfo info = new TBInfo();
            info.InfoType = Convert.ToInt32(typeId);
            info.InfoTitle = title;
            info.InfoLinkMan = linkMan;
            info.InfoContent = conntent;
            info.InfoPhone = phone;
            info.InfoEmail = email;
            info.Id = Convert.ToInt32(HiddenField_Id.Value);

            TBInfoService infoService = new TBInfoService();
            int ok = infoService.UpdateInfo(info);
            if (ok > 0)
            {
                Labe_Message.Text = "<script>alert('修改成功');location.href='searchshow.aspx';</script>";
            }
            else
            {
                Response.Write(DBHelper.Message);
                Labe_Message.Text = "<script>alert('修改失败')</script>";
            }
        }
    }
}