<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchshow.aspx.cs" Inherits="City_Web.静态页面源码.web_html.pages.show.searchshow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>都市信息网</title>
    <link type="text/css" rel="stylesheet" href="../../css/style.css">
    <script type="text/javascript">
        function del(id) {
            if (confirm("确定要删除该记录嘛？")) {
                location.href = "delete.aspx?id=" + id;
            }
        }
    </script>
</head>
<body background="../../images/back.gif">
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
	<iframe src="../../view/left.aspx" frameBorder="0" width="225" scrolling="no" height="400" ></iframe>
	</td>
   <td width="690" height="400" align="center" valign="top" bgcolor="#FFFFFF">        
        <table border="0" width="670" cellspacing="0" cellpadding="0" style="margin-top:5">
       
            <tr height="30"><td style="text-indent:5" valign="bottom"><font color="#004790"><b>■查询结果 </b>
               &nbsp <asp:DropDownList ID="DropDownList_Type" runat="server">
                </asp:DropDownList>
                &nbsp
                标题：<asp:TextBox ID="TextBox_Keys" runat="server"></asp:TextBox>
                &nbsp
                <asp:Button ID="Button_Search" runat="server" Text="查找" Height="20px" OnClick="Button_Search_Click" />
               </td></tr>
            <tr height="1"><td></td></tr>
            <tr>
                <td align="center" style="border:1 solid">
                    <asp:GridView ID="GridView_Info" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="序号" />
                            <asp:TemplateField HeaderText="信息类型">
                               <ItemTemplate>
                                   <%#Eval("TbType.TypeIntro")%>
                               </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="InfoTitle" HeaderText="信息标题" />
                            <asp:BoundField DataField="InfoDate" HeaderText="发布时间" />
                            <asp:BoundField DataField="InfoLinkman" HeaderText="联系人" />
                            <asp:TemplateField HeaderText="编辑">
                                <ItemTemplate>
                                    <a href='modify.aspx?id=<%#Eval("Id") %>'>修改</a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="删除">
                                <ItemTemplate>
                                    <a href='javascript:del(<%#Eval("Id")%>)'>删除</a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />

                    </asp:GridView>

                    <%--<table border="0" width="100%" rules="rows" cellspacing="0">
                        <tr align="center" height="30" bgcolor="#F0F0F0">
                            <td width="6%"><b>序号</b></td>
                            <td width="11%"><b>信息类别</b></td>                            
                            <td width="8%"><b>ID值</b></td>
                            <td width="38%"><b>信息标题</b></td>
                            <td width="22%"><b>发布时间</b></td>
                            <td width="15%"><b>联系人</b></td>
                        </tr>
  
						<tr height="30">
							<td align="center"><b>1</b></td>
							<td align="center">招聘信息</td>
							<td style="text-indent:10">134</td>
							<td style="text-indent:5"><a href="info_SingleShow.action?id=134">发布招聘信息标题</a></td>
							<td align="center">2007-12-26 13:58:53</td>                                    
							<td style="text-indent:10">小免</td>
						</tr>
						
						<tr height="30" bgcolor="#F9F9F9">
						
							<td align="center"><b>2</b></td>
							<td align="center">寻找启示</td>
							<td style="text-indent:10">133</td>
							<td style="text-indent:5"><a href="info_SingleShow.action?id=133">发布寻找启示标题</a></td>
							<td align="center">2007-12-26 13:56:49</td>                                    
							<td style="text-indent:10">小免</td>
						</tr>
          
                        
                    </table>--%>
                </td>
            </tr>
            <tr height="1"><td></td></tr>
            <tr height="30"><td align="center">


<html>
<head><title>分页导航栏</title></head>
<body>

   <%-- <table border="0" width="100%" cellspacing="0">
        <tr>
            <td width="60%"><table border='0' cellpadding='3'><tr><td>每页显示：8/22 条记录！当前页：1/3 页！</td></tr></table></td>
            <td align="center" width="40%"><table border='0' cellpadding='3'><tr><td><a href='info_SearchShow.action?searchInfo.subsql=info_phone&searchInfo.sqlvalue=1&searchInfo.type=like&showType=link&showpage=2'>下一页</a>&nbsp;<a href='info_SearchShow.action?searchInfo.subsql=info_phone&searchInfo.sqlvalue=1&searchInfo.type=like&showType=link&showpage=3'>尾页</a></td></tr></table></td>
        </tr>
    </table>--%>

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
</body>
</html>
