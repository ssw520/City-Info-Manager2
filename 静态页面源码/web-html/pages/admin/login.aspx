<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="City_Web.静态页面源码.web_html.pages.admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员登录</title>
    <link type="text/css" rel="stylesheet" href="../../css/style.css;">
</head>
<body>
    <form id="form1" runat="server">
    <center>
       
            <table border="0" cellspacing="0" cellpadding="0" style="margin-top:130">
                <tr><td><img src="../../images/logon_top.gif"></td></tr>                
                <tr height="180">
                    <td background="../../images/logon_middle.gif" align="center" valign="top">
                         <table border="0" width="90%" cellspacing="0" cellpadding="0">
                             <tr height="50"><td colspan="2"></td></tr>
                             <tr height="30">
                                 <td align="right" width="40%">用户名：&nbsp;&nbsp;</td>
                                 <td style="text-indent:5">
                                     <!--
                                     <input type="text" name="user.userName" size="30" value="" id="log_Login_action_user_userName"/>
                                     -->
                                     <asp:TextBox ID="TextBox_User" runat="server" style="margin-left: 0px"></asp:TextBox>
                                 </td>
                             </tr>                
                             <tr height="30">
                                 <td align="right">密&nbsp;码：&nbsp;&nbsp;</td>
                                 <td style="text-indent:5">
                                     <!--
                                     <input type="password" name="user.userPassword" size="30" id="log_Login_action_user_userPassword"/>
                                         -->
                                     <asp:TextBox ID="TextBox_Pwd" runat="server" TextMode="Password"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr height="60">
                                 <td>
                                     <asp:Label ID="Label_Message" runat="server" ForeColor="Red"></asp:Label>
                                 </td>
                                 <td>
								
                                <!--     <input type="button" id="" value="登录" onclick="window.location.href='view/AdminTemp.aspx'"/> -->

                                     <asp:Button ID="Button_Do" runat="server" Text="登录" OnClick="Button_Do_Click" />&nbsp

                                     <input type="reset" value="重置"/>

                                     <a id="log_Login_action_" href="../../view/indextemp.html">[返回首页]</a>
                                 </td>
                             </tr>
                         </table>
                    </td>
                </tr>
                <tr><td><img src="../../images/logon_end.gif"></td></tr>
            </table>
      



     
    </center>
    </form>
</body>
</html>
