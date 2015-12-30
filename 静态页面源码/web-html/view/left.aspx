<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="left.aspx.cs" Inherits="City_Web.静态页面源码.web_html.view.left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>侧栏</title>
	<link type="text/css" rel="stylesheet" href="../css/style.css">
    <style type="text/css">
        .auto-style1 {
            width: 95px;
        }
        .auto-style2 {
            width: 95px;
            height: 25px;
        }
        .auto-style3 {
            height: 25px;
        }
        .auto-style4 {
            width: 96%;
            height: 107%;
        }
        .auto-style5 {}
        .auto-style6 {
            height: 481px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table border="0" width="225" cellspacing="0" cellpadding="0" class="auto-style6">
		<tr height="30"><td style="text-indent:5" valign="bottom"><font color="#004790"><b>■日历</b></font></td></tr>            
		<tr height="1"><td></td></tr>
		<tr height="215">
			<td valign="top" background="../images/leftD.jpg" onclick="meizzClear()">
			  
              
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" CssClass="auto-style5" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="209px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
			  
              
            </td>
		</tr>
		<tr height="1"><td></td></tr>
		<tr height="30">
            <td style="text-indent:5" valign="bottom">
            <a href="../pages/show/search.aspx" target="_blank" >
                <font color="#004790" >
                    <h3><b>■信息快速搜索</b></h3>

                </font>

            </a>

            </td>

		</tr>
		<tr height="1"><td></td></tr>
		<tr height="103">
			<td align="center" valign="top" background="../images/leftS.jpg">
				<table border="0" cellspacing="0" class="auto-style4" background="../images/leftS.jpg">
				                       
					<tr height="10"><td colspan="3"></td></tr>
					<tr>
						<td align="right" class="auto-style1">关键字：</td>
						<td colspan="2" width="200">
                            <asp:TextBox ID="TextBox_Keys" runat="server"></asp:TextBox>
                        </td>
					</tr>
					<tr>
						<td align="right" class="auto-style2">条&nbsp;件：</td>
						<td class="auto-style3">
							&nbsp;<asp:DropDownList ID="DropDownList_Type" runat="server">
                                
                            </asp:DropDownList>

						</td>
						<td align="center" width="30" class="auto-style3">
							&nbsp;<asp:Button ID="Button_Search" runat="server" Text="搜索" OnClick="Button_Search_Click1" />
                                
						</td>
					</tr>
					<tr>
						<td align="right" class="auto-style1">搜索类型：</td>
						<td colspan="1">
							<asp:RadioButton ID="RadioButton_All" runat="server" Text="全字匹配" GroupName="info" />
                            <asp:RadioButton ID="RadioButton_Like" runat="server" Text="模糊搜索" GroupName="info" />                          							
						</td>
					</tr>
					<tr height="10"><td colspan="3">&nbsp;</td></tr>
				




				</table>
			</td>
		</tr>
		<tr><td></td></tr>
	</table>              
    </form>
</body>
</html>
