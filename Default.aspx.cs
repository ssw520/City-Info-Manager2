using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using City_Web.model;
using City_Web.Service;

namespace City_Web
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Redirect("/静态页面源码/web-html/view/indextemp.aspx");
            //Response.Redirect("/静态页面源码/web-html/pages/show/listshow.aspx");
        }
    

        //protected void Button_Do_Click(object sender, EventArgs e)
        //{
        //    string name = TextBox_Name.Text;
        //    string password = TextBox_Password.Text;
        //    Users user = new Users();
        //    user.LoginName = name;
        //    user.Password = password;
        //    UserServiec service = new UserServiec();        
        //    user = service.CheckLogin(user);
        //    if (user == null)
        //    {

        //        Label_Message.Text = DBHelper.Message;
        //        //Response.Write("<script>alert('用户名密码错误');</script>");
        //    }
        //    else
        //    {
        //        Label_Message.Text = "登陆成功";
        //     //   Response.Write("<script>alert('登陆成功');</script>");
        //    }
        //}
    }
}