<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="City_Web.静态页面源码.web_html.pages.show.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<link type="text/css" rel="stylesheet" href="../css/style.css">
    <style type="text/css">
        .auto-style1 {
            width: 72px;
        }
        .auto-style2 {
            width: 90px;
        }
        .auto-style3 {
            width: 28px;
        }
    </style>
</head>
<body>




      <form id="form1" runat="server">
        <center>
        <table border="0" width="920" cellspacing="0" cellpadding="0" bgcolor="white">
            <tr><td colspan="2">
				<!-- 页眉 -->
				<iframe src="../../view/top.aspx" frameBorder="0" width="920" scrolling="no" height="200" ></iframe>
			</td></tr>
<tr>
	<td width="230" valign="top" align="center">
	<!-- 左侧 -->
	
        <table border="0" width="225" height="100%" cellspacing="0" cellpadding="0" style="margin:auto">
		<tr height="1"><td></td></tr>
		<tr height="30"><td style="text-indent:5" valign="bottom"><font color="#004790"><b>■信息快速搜索</b></font></td></tr>
		<tr height="1"><td></td></tr>
		<tr height="103">
			<td align="center" valign="top" background="../images/leftS.jpg" style="background-repeat:no-repeat">
				<table border="0" height="100%" cellspacing="0">
					<tr height="10"><td colspan="3"></td></tr>
					<tr>
						<td  align="left" class="auto-style2" style="font-size:12px">关键字：</td>
						<td colspan="2" width="200" class="auto-style1" style="text-align:right">
                            <asp:TextBox ID="txtKey" runat="server" Width="168px"></asp:TextBox>
                        </td>
					</tr>
					<tr>
						<td align="left" class="auto-style2" style="font-size:12px">条&nbsp;件：</td>
						<td class="auto-style3">
                            		<asp:DropDownList ID="ddlCondition" runat="server">
                                <asp:ListItem Selected="True"></asp:ListItem>
                                <asp:ListItem Value="info_content">信息内容</asp:ListItem>
                                <asp:ListItem Value="info_phone">联系电话</asp:ListItem>
                                <asp:ListItem Value="info_email">E-mail地址</asp:ListItem>
                                <asp:ListItem Value="id">ID值</asp:ListItem>
                                <asp:ListItem Value="info_title">信息标题</asp:ListItem>
                                <asp:ListItem Value="info_linkman">联系人</asp:ListItem>
                                    </asp:DropDownList>
                            
						</td>
						<td align="center" width="30">
							<asp:Button ID="Button2" runat="server" Text="搜索" OnClick="btnSearch_Click" Width="77px" />
						</td>
					</tr>
					<tr>
						<td align="left" class="auto-style2" style="font-size:12px">搜索类型</td>
						<td colspan="2">
                          
                            <asp:RadioButton ID="rbAll" runat="server" GroupName="Srch" Text="全字搜索" Font-Size="X-Small" />
                            <asp:RadioButton ID="rbLike" runat="server" GroupName="Srch" Text="模糊搜索" Font-Size="X-Small" />
							
						</td>
					</tr>
					<tr height="10"><td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;
                        </td></tr>




				</table>
			</td>
		</tr>
		<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" OnClick="btnReturn_Click" Text="返回首页" />
                        </td></tr>
	</table>
	</td>
   <td width="690" height="400" align="center" valign="top" bgcolor="#FFFFFF">        
        <table border="0" width="670" cellspacing="0" cellpadding="0" style="margin-top:5">
       
            <tr height="30"><td style="text-indent:5" valign="bottom">&nbsp;</td></tr>
            <tr height="1"><td></td></tr>
            <tr>
                <td align="center" style="border:1 solid">
               
            <p style="color:blue">
              <asp:Label ID="lblGv" runat="server"></asp:Label></p>
            <asp:GridView ID="gdvCon" runat="server" Height="187px" Width="692px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" EnableModelValidation="True" GridLines="None" style="margin-left: 0px; margin-right: 0px; margin-top: 17px">
                            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID值" />
                <asp:BoundField DataField="InfoTitle" HeaderText="信息标题" />
                <asp:BoundField DataField="InfoContent" HeaderText="信息内容" />
                <asp:BoundField DataField="InfoLinkman" HeaderText="联系人" />
                <asp:BoundField DataField="InfoPhone" HeaderText="联系电话" />
                <asp:BoundField DataField="InfoEmail" HeaderText="E-mail地址" />
                <asp:BoundField DataField="InfoDate" HeaderText="日期" />
            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            </asp:GridView>

       

                
                </td>
            </tr>
            <tr height="1"><td></td></tr>
            <tr height="30"><td align="center">


<html>
<head><title>分页导航栏</title></head>
<body>

  

</body>
</html></td></tr>
        </table>
        
        <br>
</td>
            </tr>
           
        </table>
		<!-- 页脚 -->
		<iframe src="../../view/end.aspx" frameBorder="0" width="920" scrolling="no" height="70" style="margin-top:0"></iframe>        
    </center>
    </form>








