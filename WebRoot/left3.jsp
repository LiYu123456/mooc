<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>高校Mooc资源共享平台</title>
<link href="images/css1/left_css.css" rel="stylesheet" type="text/css">

  </head>
<SCRIPT language=JavaScript>
function showsubmenu(sid){
	whichEl = eval("submenu" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}
	else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</SCRIPT>
 <body bgcolor="16ACFF">
<table width="98%" border="0" cellpadding="0" cellspacing="0" background="images/tablemde.jpg">
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#16ACFF"></td>
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
          <td height="25" class="titledaohang" style="CURSOR: hand" onClick="showsubmenu(2);"><span class="STYLE1">热门主题管理</span></td>
              </tr>
            </table></td>
          </tr>
        <tr>
          <td><table id="submenu2" cellspacing="0" cellpadding="0" width="100%" border="0">
              <tbody>
                <tr>
                  <td width="2%"><img src="images/closed.gif" /></td>
                  <td height="23"><a 
            href="xinwentongzhi_add.jsp" 
            target="main">热门主题添加</a></td>
                </tr>
                <tr>
                  <td><img src="images/closed.gif" /></td>
                  <td height="23"><a 
            href="xinwentongzhi_list.jsp" 
            target="main">热门主题查询</a></td>
                </tr>
              </tbody>
          </table></td>
        </tr>
      </tbody>
    </table></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(3); 
    height=25>课程信息管理</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu3 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="kechengxinxi_add.jsp" 
            target=main>课程信息添加</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="kechengxinxi_list.jsp" 
            target=main>课程信息查询</A> </TD>
                </TR>
              </TBODY>
          </TABLE></TD>
        </TR>
		
      </TBODY>
    </TABLE></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  
  <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(4); 
    height=25>资料下载管理</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu4 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="ziliaoxiazai_add.jsp" 
            target=main>资料下载添加</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="ziliaoxiazai_list.jsp" 
            target=main>资料下载查询</A> </TD>
                </TR>
              </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
   <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(5); 
    height=25>学习视频管理</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu5 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="xuexishipin_add.jsp" 
            target=main>学习视频添加</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="xuexishipin_list.jsp" 
            target=main>学习视频查询</A> </TD>
                </TR>
              </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE></td>
  </tr>
  
   <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
   <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(6); 
    height=25>个人资料管理</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu6 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="mod.jsp" 
            target=main>修改密码</A> </TD>
                </TR>
              </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE></td>
  </tr>
  
  <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
     <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
    </TABLE></td>
  </tr>
  
  <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
     <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(8); 
    height=25>教师题库管理</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu8 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                
                <%
                	String selecType=(String)request.getSession().getAttribute("selectType");
                  	if(selecType!=null&&selecType.indexOf("choice")>=0){
                  		
                %>
		                <TR>
		                  <TD width="2%"><IMG src="images/closed.gif"></TD>
		                  <TD height=23><A href="xuanzeti_add.jsp" target=main>选择题添加</A> </TD>
		                </TR>
		                
						<TR>
		                  <TD width="2%"><IMG src="images/closed.gif"></TD>
		                  <TD height=23><A href="xuanzeti_list.jsp" target=main>选择题查询</A> </TD>
		                </TR>
                <%
                  	}
                  	if(selecType!=null&&selecType.indexOf("judge")>=0){
                %>
                		<TR>
		                  <TD width="2%"><IMG src="images/closed.gif"></TD>
		                  <TD height=23><A href="panduan_add.jsp" target=main>判断题添加</A> </TD>
		                </TR>
		                <TR>
		                  <TD width="2%"><IMG src="images/closed.gif"></TD>
		                  <TD height=23><A href="panduan_list.jsp" target=main>判断题查询</A> </TD>
		                </TR>
				<% 
                  	}
                  	if(selecType!=null&&!"".equals(selecType)){
				%>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="zidongzujuan_add.jsp" target=main>组卷添加</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="zidongzujuan_list.jsp" target=main>组卷管理</A> </TD>
                </TR>
                <% }%>
              </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE></td>
  </tr>
  
  
   <tr>
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr>
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
     <tr>
    <td><TABLE class=leftframetable cellSpacing=0 cellPadding=0 width="97%" align=right 
border=0>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(images/left_tt.gif) no-repeat"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <TD width="20"></TD>
          <TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(9); 
    height=25>系统管理</TD>
            </tr>
          </table></TD>
          </TR>
        <TR>
          <TD><TABLE id=submenu9 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
			 	 <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="liuyanban_list.jsp" 
            target=main>留言管理</A> </TD>
                </TR>
                <TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="dx.jsp?lb=系统公告" 
            target=main>系统公告</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="dx.jsp?lb=系统简介" 
            target=main>系统简介</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="youqinglianjie_add.jsp" 
            target=main>友情连接添加</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="youqinglianjie_list.jsp" 
            target=main>友情连接查询</A> </TD>
                </TR>
				<TR>
                  <TD width="2%"><IMG src="images/closed.gif"></TD>
                  <TD height=23><A href="databack.jsp" 
            target=main>数据备份</A> </TD>
                </TR>
              </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE></td>
  </tr>
  <tr style="display:none">
    <td height="5" background="images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr style="display:none">
    <td height="5" background="images/tableline_top.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  <tr style="display:none">
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

