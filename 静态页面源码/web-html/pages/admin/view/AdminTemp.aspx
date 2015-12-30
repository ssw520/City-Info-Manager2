<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminTemp.aspx.cs" Inherits="City_Web.静态页面源码.web_html.pages.admin.view.AdminTemp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>都市信息网-后台管理</title>
    <link type="text/css" rel="stylesheet" href="../../../css/style.css">
    <style type="text/css">
        .auto-style1 {
            height: 579px;
        }
        .auto-style2 {
            height: 561px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
   
        <table border="0" width="920" cellspacing="0" height="auto" bgcolor="white">
            <tr><td colspan="2">
				<!-- 页眉 -->
				<iframe src="top.aspx" frameBorder="0" width="920" scrolling="no" height="100" ></iframe>

</td></tr>
            <tr height="10" bgcolor="lightgrey"><td colspan="2"></td></tr>
            <tr>
                <td width="700" align="center" valign="top" class="auto-style1">
<!-- main -->
<iframe src="main.aspx" frameBorder="0" width="688" scrolling="no" height="400" ></iframe>
<table>
    <tr>
        <td width="300"><a href="../../add/addInfo.aspx">发布信息</a></td>
    </tr>
</table>
</td>
                <td width="200" align="center" valign="top" class="auto-style1">
				<!-- 右侧栏 -->
				<iframe src="right.aspx" frameBorder="0" width="240" scrolling="no" class="auto-style2" ></iframe>


</td>
            </tr>
            <tr height="7" bgcolor="lightgrey"><td colspan="2"></td></tr>
            <tr><td colspan="2">
<!-- 页脚 -->
		<iframe src="end.aspx" frameBorder="0" width="920" scrolling="no" height="70" style="margin-top:0"></iframe>   
</td></tr>
        </table>        
    </center>
    </form>
</body>
</html>
