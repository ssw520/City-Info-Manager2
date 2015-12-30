<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indextemp.aspx.cs" Inherits="City_Web.静态页面源码.web_html.view.indextemp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>都市信息网</title>

    <link type="text/css" rel="stylesheet" href="../css/style.css">
    <style type="text/css">
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
            line-height: 23px;
            width: 335px;
            text-align:left;
        }
    </style>
</head>
<body background="../images/back.gif">
    <form id="form1" runat="server">
        <center>
        <table border="0" width="920" height="auto" cellspacing="0" cellpadding="0" bgcolor="white">
            <tr><td colspan="2">

			<!-- 页眉 -->
			<iframe src="top.aspx" frameBorder="0" width="920" scrolling="no" height="200" ></iframe>
			</td></tr>
            <tr>
                <td width="230" valign="top" align="center">
				<!-- 左侧 -->
				<iframe src="left.aspx" frameBorder="0" width="225" scrolling="no" height="400" ></iframe>
				</td>
                <td width="690" height="400" align="center" valign="top" bgcolor="#FFFFFF">


				<html>
				<head><title>首页</title></head>
				<body>
					<center>
						<!-- 缴费专区 -->
								
						<table border="0" width="670" cellspacing="0" cellpadding="5">
							<tr height="35"><td style="text-indent:5" valign="bottom"><font color="#004790"><b>■推荐信息</b>『缴费专区』</font></td></tr>
							<tr bgcolor="#FAFCF5">
								<td style="border:1 solid">
                                     <div style="width:670;height:92;">
                                            <ul style="width:670px;height:92">                                   
                                                <asp:Repeater ID="Repeater_Payfor" runat="server">
                                                     <ItemTemplate>
                                                      <li>
                                                        『<b> <%#Eval("TbType.TypeIntro") %> </b>』
                                                        <a href='../pages/show/singleshow.aspx?typeId= <%# Eval("id") %>'><%#Eval("InfoTitle") %> 
                                                        </a>
                                                       </li>
                                                     </ItemTemplate>
                                       
                                                </asp:Repeater>
                                            </ul>
                                        </div>

					<%--				<table border="0" width="100%" cellspacing="0" cellpadding="0">
                                       
										 <tr height="23">
											<td width="50%">『<b>求职信息</b>』
												<a href="../pages/show/singleshow.html">求职信息标题</a>
											</td>
											<td width="50%">『<b>招聘信息</b>』
												<a href="../pages/show/singleshow.html">招聘信息标题</a>
											</td>
										 </tr>
									
										 <tr height="23">
											<td width="50%">『<b>培训信息</b>』
												<a href="../pages/show/singleshow.html">培训信息标题</a></td>
											<td width="50%">『<b>求购信息</b>』
												<a href="../pages/show/singleshow.html">求购信息标题</a></td>
										 </tr>
										 
										 <tr height="23">
											<td width="50%">『<b>求职信息</b>』
												<a href="../pages/show/singleshow.html">求职信息标题</a>
											</td>
											<td width="50%">『<b>招聘信息</b>』
												<a href="../pages/show/singleshow.html">招聘信息标题</a>
											</td>
										 </tr>
									
										 <tr height="23">
											<td width="50%">『<b>培训信息</b>』
												<a href="../pages/show/singleshow.html">培训信息标题</a></td>
											<td width="50%">『<b>求购信息</b>』
												<a href="../pages/show/singleshow.html">求购信息标题</a></td>
										 </tr>
										                
									</table>--%>
								</td>
							</tr>
						</table>
						<!-- 广告 -->
						<table border="0" width="670"cellspacing="0" cellpadding="0" style="margin-top:1">
							<tr><td align="center"><img src="../images/pcard2.jpg"></td></tr>
						</table>        
						<!-- 免费专区 -->
						
						<table border="0" width="670" cellspacing="2" cellpadding="0">
							<tr height="35"><td colspan="2" style="text-indent:5" valign="bottom"><font color="#004790"><b>■最新信息</b>『免费专区』</font></td></tr>            
							 
							<%--<tr>
								<td align="center">
									<table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none" bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">
									
									</table>
								</td>
							
						
						 
							</tr>--%>
						
							<tr>
								<td align="center">
									<table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none" bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">
									<tr bgcolor="#00B48F" height="30">
										<td style="text-indent:10"><b><font color="white">培训信息</font></b></td> </tr>
                                    <asp:Repeater ID="Repeater_FreeInfo2" runat="server">
                                        <ItemTemplate>
                                            <tr bgcolor="#FAFCF5"><td style="text-indent:3">★ <a href="../pages/show/listshow.aspx"><%#Eval("InfoTitle") %></a></td></tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
									<%--<tr bgcolor="#FAFCF5"><td style="text-indent:3">★ <a href="../pages/show/listshow.aspx">发布培训信息标题</a></td></tr>--%>
									<tr height="20" bgcolor="#FAFCF5"><td align="right"><a href="../pages/show/listshow.aspx">更多...</a>&nbsp;&nbsp;</td></tr>	
									
									</table>
								</td>
					 
								<td align="center">
									<table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none" bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">
										
										 <tr bgcolor="#00B48F" height="30">
											<td style="text-indent:10"><b><font color="white">求职信息</font></b></td>                                      
										 </tr>
									 <asp:Repeater ID="Repeater_FreeInfo7" runat="server">
                                        <ItemTemplate>
                                            <tr bgcolor="#FAFCF5"><td style="text-indent:3">★ <a href="../pages/show/listshow.aspx"><%#Eval("InfoTitle") %></a></td></tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
										<%--<tr bgcolor="#FAFCF5">
											<td style="text-indent:3">★ <a href="../pages/show/listshow.aspx">发布求职信息标题</a></td>
										</tr>
                                              --%> 
										<tr height="20" bgcolor="#FAFCF5">
											<td align="right"><a href="../pages/show/listshow.aspx">更多...</a>&nbsp;&nbsp;</td>
										</tr>                                 
									 
									</table>
								</td>
							</tr>
				  
						</table>
						<br>
					</center>
				</body>
				</html>
			</td>
		</tr>

       </table>
		<!-- 页脚 -->
		<iframe src="end.aspx" frameBorder="0" width="920" scrolling="no" height="70" style="margin-top:0"></iframe>	   
    </center>
    </form>
</body>
</html>
