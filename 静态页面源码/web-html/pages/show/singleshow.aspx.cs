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
    public partial class singleshow : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string idStr = Request.QueryString["typeId"];
            int typeId = 0;
            if (idStr != null && idStr != string.Empty)
            {
                try
                {
                    typeId = Convert.ToInt32(idStr);
                }
                catch
                {
                    typeId = -1;
                }
            }
            //   Response.Write(typeId);
            showData(typeId);
        }

        public void showData(int typeId)
        {
            TBInfoService infoSeervice = new TBInfoService();
            TBInfo info = infoSeervice.GetTheNewInfoByPayFor(1, typeId);

            TBTypeService typeService = new TBTypeService();
            string typeName = typeService.GetTBTypeById(typeId);
            Label_PayName.Text = typeName;
          

            Labe_Title1.Text = info.InfoTitle;
            Label_Date1.Text = string.Format("{0:yyyy-MM-dd HH:mm:ss}", Convert.ToDateTime(info.InfoDate));

            string content1 = info.InfoContent;
            if (content1 == null)
            {
                content1 = "内容为空";
            }
            if (content1.Length > 20)
            {
                content1 = content1.Substring(0, 20);
            }
            Label_Content1.Text = content1;


            Label_Linkman1.Text = info.InfoLinkMan;
            string phone1 = info.InfoPhone;
            if (phone1 == null)
            {
                phone1 = "0000000000";
            }
            Label_Phone1.Text = phone1.Substring(0, 7) + "****";
            Label_Email1.Text = info.InfoEmail;

            
        }
    }
}