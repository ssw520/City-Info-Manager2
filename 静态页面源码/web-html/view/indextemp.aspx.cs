using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using City_Web.model;
using City_Web.Service
;

namespace City_Web.静态页面源码.web_html.view
{
    public partial class indextemp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            showInfoByPayFor();
        }
        private void showInfoByPayFor()
        {
            TBInfoService infoService = new TBInfoService();
            ArrayList list1 = infoService.GetInfoList(0, "", 8, 1,0);
            Repeater_Payfor.DataSource = list1;
            Repeater_Payfor.DataBind();

            ArrayList list0 = infoService.GetInfoList(2,"",5,0,-1);
            Repeater_FreeInfo2.DataSource = list0;
            Repeater_FreeInfo2.DataBind();

            ArrayList list7 = infoService.GetInfoList(7, "", 5, 0, -1);
            Repeater_FreeInfo7.DataSource = list7;
            Repeater_FreeInfo7.DataBind();

        }
    }
}