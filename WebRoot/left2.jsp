
<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>高校Mooc资源共享平台</title>
<link href="images/css1/left_css.css" rel="stylesheet" type="text/css">

  </head>
<SCRIPT language=JavaScript>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>
<body bgcolor="16ACFF">
	<table width="91%" border="0" cellpadding="0" cellspacing="0" background="images/tablemde.jpg">
		<tr>
			<td height="5" background="images/tableline_top.jpg" bgcolor="#16ACFF"></td>
		</tr>
		<tr>
			<td>
				<TABLE width="97%" border=0 align=right cellPadding=0 cellSpacing=0 class=leftframetable>
					<TBODY>
						<TR>
          					<TD height="25" style="background:url(images/left_tt.gif) no-repeat">
					            <table width="100%" border="0" cellspacing="0" cellpadding="0">
					              <tr>
					                <TD width="20"></TD>
					          		<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(1); height=25>个人资料管理</TD>
					              </tr>
					            </table>            
            				</TD>
          				</TR>
        				<TR>
          					<TD>
          						<TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              						<TBODY>
						                <TR>
						                	<TD width="1%"><IMG src="images/closed.gif"></TD>
						                	<TD height=23><A href="yonghuzhuce_updt2.jsp" target=main>个人资料管理</A></TD>
						                </TR>
              						</TBODY>
          						</TABLE>
          					</TD>
        				</TR>
      				</TBODY>
				</TABLE>
			</td>
		</tr>
  		<tr>
    		<td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  		</tr>
		<tr>
    		<td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
		</tr>
		<tr>
    		<td>
    			<table class="leftframetable" cellspacing="0" cellpadding="0" width="97%" align="right" border="0">
					<tbody>
				        <tr>
				          <td height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
				              <tr>
				              	<td width="20"></td>
				          		<td height="25" class="titledaohang" style="CURSOR: hand" onClick="showsubmenu(2);">
				          			<span class="STYLE1">学习进度管理</span>
				          		</td>
				              </tr>
				            </table></td>
				        </tr>
        				<tr>
          					<td>
          						<table id="submenu2" cellspacing="0" cellpadding="0" width="100%" border="0">
              						<tbody>
						                <tr>
						                  <td width="2%">
						                  	<img src="images/closed.gif" />
						                  </td>
						                  <td height="23">
						                  	<a href="xinwentongzhi_add.jsp" target="main">学习进度添加</a>
						                  </td>
						                </tr>
                						<tr>
                  							<td>
                  								<img src="images/closed.gif" />
                  							</td>
                  							<td height="23">
                  								<a href="xinwentongzhi_list.jsp?lb=学习进度" target="main">学习进度查询</a>
                  							</td>
                						</tr>
              						</tbody>
          						</table>
          					</td>
        				</tr>
					</tbody>
				</table>
			</td>
		</tr>
  <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  
  
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td><table class="leftframetable" cellspacing="0" cellpadding="0" width="97%" align="right" 
border="0">
      <tbody>
        <tr>
          <td height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="20"></td>
          <td height="25" class="titledaohang" style="CURSOR: hand" onClick="showsubmenu(2);"><span class="STYLE1">成绩查看</span></td>
              </tr>
            </table></td>
          </tr>
        <tr>
          <td><table id="submenu2" cellspacing="0" cellpadding="0" width="100%" border="0">
              <tbody>
                <tr>
                  <td width="2%"><img src="images/closed.gif" /></td>
                  <td height="23"><a 
            href="cj_list2.jsp" 
            target="main">成绩查看</a></td>
                </tr>
                
              </tbody>
          </table></td>
        </tr>
      </tbody>
    </table></td>
  </tr>
   <tr >
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr >
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr >
    <td height="8">
	
<TABLE class=leftframetable cellSpacing=1 cellPadding=1 width="97%" align=right 
border=0 >
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 height=25>系统信息</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD 
      height=105><span class="STYLE2"><IMG src="images/closed.gif">版权所有：xxxx<br>
              <IMG src="images/closed.gif">设计制作：xxxx<br>
              <IMG src="images/closed.gif">技术支持：<a href="http://www.865171.cn" target="_blank">xxxx</a><br>
              <IMG src="images/closed.gif">帮助中心：<a href="http://www.865171.cn" target="_blank">xxxx</a><br>
            <IMG src="images/closed.gif">系统版本：1.0</span></TD>
        </TR>
      </TBODY>
    </TABLE>	</td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_bottom.jpg"></td>
  </tr>
</table>
  </body>
</html>

