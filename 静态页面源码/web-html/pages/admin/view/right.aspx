<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="right.aspx.cs" Inherits="City_Web.静态页面源码.web_html.pages.admin.view.right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>后台-侧栏</title>
  <link type="text/css" rel="stylesheet" href="../../../css/style.css">
    <script type="text/javascript" src="../../../js/calendar.js"></script>
    <style type="text/css">
        .auto-style1 {}
    </style>
</head>
<body background="../../../images/back.gif" style="background-color:white">
    <form id="form1" runat="server">
    <center>
   
        <table border="1" width="220" cellspacing="0" cellpadding="0" style="margin-top:7;background-color:white; height: 599px;">
            <!-- 显示方式 -->
            <tr height="30" bgcolor="#F0F0F0"><td style="text-indent:5;border:1 solid"><font color="#004790"><b>■显示方式</b></font></td></tr>
            <tr height="1"><td></td></tr>
          
            <tr>
                <td align="center" valign="top" style="border:1 solid">
                    <table border="1" width="220" height="150" rules="all" cellspacing="0">
                        <tr>
                            <td align="center" colspan="2">
                                <fieldset style="height:60;width:210">
                                  <legend>★付费状态</legend>
                                  <br>
                                    <asp:RadioButton ID="RadioButton_Pay0" runat="server" Text="未付费" GroupName="Pay" />
&nbsp;<asp:RadioButton ID="RadioButton_Pay1" runat="server" Text="已付费" GroupName="Pay" />
&nbsp;<asp:RadioButton ID="RadioButton_PayAll" runat="server" GroupName="Pay" Text="全部" />
                                </fieldset>
                                <fieldset style="height:60;width:210">
                                  <legend>★审核状态</legend>
                                  <br>
                                  <input type="radio" name="showType.stateType" id="admin_ListShow_action?_showType_stateType0" value="0"/>
								  <label for="admin_ListShow_action?_showType_stateType0">未审核</label>
									<input type="radio" name="showType.stateType" id="admin_ListShow_action?_showType_stateType1" value="1"/>
									<label for="admin_ListShow_action?_showType_stateType1">已审核</label>
									<input type="radio" name="showType.stateType" id="admin_ListShow_action?_showType_stateTypeall" value="all"/>
									<label for="admin_ListShow_action?_showType_stateTypeall">全部</label>

                                </fieldset>
                            </td>
                        </tr>
                        <tr align="center" height="30" bgcolor="lightgrey">
                            <td>
                               信息类别：
                               
                                    
                                <asp:DropDownList ID="DropDownList_Type" runat="server">
                                </asp:DropDownList>
&nbsp;<asp:Button ID="Button_Display" runat="server" Text="显示" OnClick="Button_Display_Click" />
&nbsp;</td>
                        </tr>
                        
                    </table>
                </td>
            </tr>
          

            <tr height="5"><td></td></tr>
            <!-- 设置已付费信息 -->            
            <tr height="30" bgcolor="#F0F0F0"><td style="text-indent:5" style="border:1 solid"><font color="#004790"><b>■付费设置</b></font></td></tr>
            <tr height="1"><td></td></tr>
            
            <tr>
                <td align="center" valign="top" style="border:1 solid">
                    <table border="1" width="220" height="80" cellspacing="0" rules="none">
                        <tr height="25"><td align="center" valign="bottom">请输入要设为已付费状态的信息ID：<br />
                            </td></tr>
                        <tr height="40">
                            <td align="center">
                                &nbsp;<asp:TextBox ID="TextBox_Id" runat="server"></asp:TextBox>
                                &nbsp;<asp:Button ID="Button_Search" runat="server" Text="查询" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
           
            <tr height="5"><td></td></tr>
            <tr height="30" bgcolor="#F0F0F0"><td style="text-indent:5;border:1 solid"><font color="#004790"><b>■日历</b></font></td></tr>
            <tr height="1"><td>
                <asp:Calendar ID="Calendar1" runat="server" CssClass="auto-style1" Height="140px"></asp:Calendar>
                </td></tr>
            <!-- 日历 -->            
            <tr height="130">
                <td valign="top" style="border:1 solid">




			        &nbsp;</td>
            </tr>
        </table>        
    </center>
    </form>
</body>
</html>
