using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using City_Web.model;
using City_Web.Service;

namespace City_Web.静态页面源码.web_html.pages.show
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id = 0;
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
                TBInfoService infoService = new TBInfoService();
               int ok = infoService.DeleteInfoById(Id);
                if (ok > 0)
                {
                    Response.Redirect("searchshow.aspx");
                }
                else
                {
                    Response.Write("删除失败");
                }
            }         
        }
    }
}