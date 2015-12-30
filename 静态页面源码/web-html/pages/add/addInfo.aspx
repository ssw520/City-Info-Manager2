<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addInfo.aspx.cs" Inherits="City_Web.静态页面源码.web_html.pages.add.addInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>都市信息网</title>

  <link type="text/css" rel="stylesheet" href="../../css/style.css">
    <script type="text/javascript" src="../../../js/InputCheck.js"></script>
    <script type="text/javascript">
        function check(fieldName, UseName, RemName, len) {
            if (fieldName.value.length > len) {
                fieldName.value = (fieldName.value).substring(0, len);
                alert("最多可只允许输入 " + len + " 个字符！");
                return false;
            }
            else {
                UseName.value = eval(fieldName.value.length);
                RemName.value = len - UseName.value;
                return true;
            }
        }
    </script>

    <style type="text/css">
        .auto-style1 {}
    </style>

</head>
<body background="../../images/back.gif">
    <form id="form1" runat="server">
   <center>
        <table border="0" width="920" cellspacing="0" cellpadding="0" bgcolor="white">
            <tr>
			<td colspan="2">
			<!-- 页眉 -->
			<iframe src="../../view/top.aspx" frameBorder="0" width="920" scrolling="no" height="200" ></iframe>

			</td>
			</tr>
            <tr>
                <td width="230" valign="top" align="center">
				<!-- 左边 -->
				<iframe src="../../view/left.aspx" frameBorder="0" width="225" scrolling="no" height="400" ></iframe>
				</td>
                <td width="690" height="400" align="center" valign="top" bgcolor="#FFFFFF">
				<table border="0" cellpadding="0" cellspacing="0" width="688" height="100%">
					<tr height="20"><td><img src="../../images/default_t.jpg"></td></tr>
					<tr>
						<td background="../../images/default_m.jpg" valign="top" align="center">
							<form id="info_Add_action" name="info_Add_action" action="/web/info_Add.action" method="post">
							<input type="hidden" name="addType" value="add"/>
							<table border="0" width="650" height="300" rules="all" cellspacing="0">
								<tr height="30"><td style="text-indent:10"><font color="#004790"><b>■发布信息</b></font></td></tr>
								<tr>
									<td align="center">
										<table border="0" width="650" rules="all" cellspacing="8">                    
											<tr>
												<td width="20%" style="text-indent:10">信息类别：</td>
												<td>
												    <asp:DropDownList ID="DropDownList1" runat="server">
                                                    </asp:DropDownList>
										
												</td>
												<td align="right"><font color="#7F7F7F">[信息标题最多不得超过 40 个字符]&nbsp;&nbsp;</font></td>
											</tr>
											<tr><td colspan="3"></td></tr>
											<tr>
												<td style="text-indent:10">信息标题：</td>
												<td colspan="2">
                                                    <asp:TextBox ID="TextBox_Title" runat="server" Width="455px"></asp:TextBox>
                                                </td>                        
											</tr>
											<tr><td colspan="3"></td></tr>
											<tr>
												<td style="text-indent:10">信息内容：</td> 
												<td>
													<font color="#7F7F7F">
														已用：<input type="text" name="ContentUse" value="0" size="4" disabled style="text-align:center;border:0;"> 个&nbsp;&nbsp;
														剩余：<input type="text" name="ContentRem" value="500" size="4" disabled style="text-align:center;border:0;"> 个 
													</font>
												</td>
												<td align="right"><font color="#7F7F7F">[信息内容最多不得超过 500 个字符]&nbsp;&nbsp;</font></td>
											</tr>
											<tr><td colspan="3"></td></tr>
											<tr><td colspan="3" align="center">
                                                
                                                <asp:TextBox ID="TextBox_Content" runat="server" Columns="85"  onkeydown="check(TextBox_Content,ContentUse,ContentRem,500)" onkeyup="check(TextBox_Content,ContentUse,ContentRem,500)" onchange="check(TextBox_Content,ContentUse,ContentRem,500)" TextMode="MultiLine" CssClass="auto-style1" Height="236px"></asp:TextBox>
                                           <tr>
												<td style="text-indent:10">联系电话：</td>
												<td colspan="2">
                                                    <asp:TextBox ID="TextBox_Phone" runat="server" Width="212px"></asp:TextBox>
                                                    <font color="gray">&nbsp;[多个电话以逗号分隔！]</font></td>
											</tr>
											<tr><td colspan="3"></td></tr>
											<tr>
												<td style="text-indent:10">联 系 人：</td>
												<td colspan="2">
                                                    <asp:TextBox ID="TextBox_Linkman" runat="server" Width="236px"></asp:TextBox>
                                                </td>
											</tr>
											<tr><td colspan="3"></td></tr>
											<tr>
												<td style="text-indent:10">E - mail：</td>
												<td colspan="2">
                                                    <asp:TextBox ID="TextBox_Email" runat="server" Width="246px"></asp:TextBox>
                                                </td>                    
											</tr>
											<tr><td colspan="3"></td></tr>                        
										</table>                
									</td>
								</tr>
								<tr align="center" height="50">
									<td>
										&nbsp;<asp:Button ID="Button_OK" runat="server" Text="发布" OnClick="Button_OK_Click" />&nbsp

										<input type="reset" value="&#37325;&#22635;"/>
                                        <asp:Label ID="Labe_Message" runat="server"></asp:Label>

									</td>
								</tr>
							</table>
							</form>

						</td>
					</tr>
					<tr height="26"><td><img src="../../images/default_e.jpg"></td></tr>        
				</table>
				</td>
            </tr>
        </table>        
    </center>
    </form>
</body>
</html>
