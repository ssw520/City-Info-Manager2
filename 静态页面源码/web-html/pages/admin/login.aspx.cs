using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using City_Web.Service;
using City_Web.model;
namespace City_Web.静态页面源码.web_html.pages.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Do_Click(object sender, EventArgs e)
        {
            string name = TextBox_User.Text;
            string pwd = TextBox_Pwd.Text;
            if (name.Trim() == "" || pwd == "")
            {
                Label_Message.Text = "用户名和密码不能为空";
            }
            else
            {
                Users user = new Users();
                user.LoginName = name;
                user.Password = pwd;

                UserServiec service = new UserServiec();
                user = service.CheckLogin(user);
                if (DBHelper.Message != string.Empty)
                {
                    Label_Message.Text = " 登录失败,可能的错误消息是：" + DBHelper.Message;
                    DBHelper.Message = string.Empty;
                }
                else
                {
                    if (user == null)
                    {
                        Label_Message.Text = "登录失败,账号或密码错误";

                    }
                    else
                    {
                       // Label_Message.Text = "登陆成功";
                        Session["Users"] = user;
                        Response.Redirect("view/AdminTemp.aspx");
                      
                    }
                }
            }
        }
    }
}