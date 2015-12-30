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
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gdvCon.AutoGenerateColumns = false;
      //      string name = Session["key"].ToString();
          //  showData();
        }

        protected void gdvCon_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string key = txtKey.Text;
            string con = ddlCondition.SelectedValue;
            int ok = -1;
            if (rbAll.Checked == true)
            {
                ok = 0;
            }//全字搜索
            else if (rbLike.Checked == true)
            {
                ok = 1;
            }//模糊搜索
            TBInfoService infoService = new TBInfoService();
            key = key.Trim();
            ArrayList list = infoService.GetInfoByCondition(ok, key, con);
            gdvCon.DataSource = list;
            gdvCon.DataBind();
            if (list.Count == 0)
            {
                lblGv.Text = "无结果";
            }
            else
            {
                lblGv.Text = "";
            }
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("indextemp.aspx");
        }
    }
}