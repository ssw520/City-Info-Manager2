<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="top.aspx.cs" Inherits="City_Web.静态页面源码.web_html.view.top" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>页眉</title>
    <link type="text/css" rel="stylesheet" href="../css/style.css">
    <style>
        div {
            margin: 0px;
            padding: 0px;
        }

        ul {
            margin: 0px;
            padding: 0px;
        }

        li {
            margin: 0px;
            padding: 0px;
            list-style-type: none;
            float: left;
            width: 100px;
            height: 28px;
            line-height: 28px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <table border="0" width="100%" cellspacing="0" cellpadding="0">
            <!-- 顶部菜单 -->
           <tr height="20">
                <td style="text-indent:10" valign="bottom">
                    <a href="" onclick="window.parent.location.href='../pages/add/addInfo.aspx'" style="color:gray">[发布信息]</a>
                    <a href="" onclick="window.parent.location.href='../pages/admin/login.aspx'" style="color:gray">[进入后台]</a>
                </td>
                <td align="right" valign="bottom">
                    <a href="#"  style="color:gray" onclick="">设为主页 -</a>
                    <a href="javascript:window.external.AddFavorite('indextemp.aspx','都市供求信息网')" style="color:gray">收藏本页 -</a>
                    <a href="mailto:123@***.com.cn" style="color:gray">联系我们</a>
                    &nbsp;
                </td>
            </tr>
            <!-- 导航菜单 -->
            <tr height="56">
                <td align="center" width="220" background="../images/logo.gif"></td>
                <td align="right" background="../images/menu.gif">
                    <div style="width:700px;height:56px;">
                        <ul style="width:700px;height:56px;">
                            <li><a href="" onclick="window.parent.location.href='indextemp.aspx'" style="color:white">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
                         <asp:Repeater ID="Repeater_TBType" runat="server">
                             <ItemTemplate>                            
                                 <li>
                                       <a href="" onclick="window.parent.location.href='../pages/show/listshow.aspx?typeId= <%#Eval("id") %>'" style="color:white">
                                           <%#Eval("TypeIntro") %>
                                       </a>
                                 </li>
                             </ItemTemplate>
                         </asp:Repeater>  
                        </ul>
                    </div>
                      <%-- <table border="0" width="600">
						<tr align="center">
							<td width="100">
								<a href="" onclick="window.parent.location.href='indextemp.aspx'" style="color:white">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></font></td>
							
					
							<td width="100">
								<a href="" onclick="window.parent.location.href='../pages/show/listshow.aspx?typeId=1'" style="color:white">招聘信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='../pages/show/listshow.aspx?typeId=2'" style="color:white">培训信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='../pages/show/listshow.aspx?typeId=3'" style="color:white">房屋信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='../pages/show/listshow.aspx?typeId=4'" style="color:white">求购信息</a>
							</td>
						</tr>
								
						<tr align="center">
							<td width="100">
								<a href="" onclick="window.parent.location.href='../pages/show/listshow.aspx'" style="color:white">招商引资</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='../pages/show/listshow.aspx'" style="color:white">公寓信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='../pages/show/listshow.aspx'" style="color:white">求职信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='../pages/show/listshow.aspx'" style="color:white">家教信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='../pages/show/listshow.aspx'" style="color:white">车辆信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='../pages/show/listshow.aspx'" style="color:white">出售信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='../pages/show/listshow.aspx'" style="color:white">寻找启示</a>
							</td>    
						</tr>                      
					</table>--%>
                    
                </td>
            </tr>
        </table>
        <table border="0" width="100%" height="90" cellspacing="0" cellpadding="0" style="margin-top:1">
            <tr><td align="center"><img src="../images/pcard1.jpg"></td></tr>
        </table>
    </center>
    </form>
</body>
</html>
