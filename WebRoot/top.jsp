
<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
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
<link href="images/css1/top_css.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE7 {color: #03A8F6}
.STYLE8 {color: #CCCCCC}
-->
</style>


  </head>

<body bgcolor="#03A8F6">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="194" height="60" align="center" background="images/top_logo.jpg"><table width="70%" height="51" border="0" align="center">
      <tr>
        <td align="center"><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
            <div align="center" class="STYLE5 STYLE7">管理平台</div>
        </div></td>
      </tr>
    </table></td>
    <td align="center" style="background:url(images/top_bg.jpg) no-repeat"><table cellspacing="0" cellpadding="0" border="0" width="100%" height="33">
      <tbody>
        <tr>
          <td width="35" align="left"><img onClick="switchBar(this)" height="15" alt="关闭左边管理菜单" src="images/on-of.gif" width="15" border="0" /></td>
          <td width="935" align="left"><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
            <div align="center" class="STYLE5 STYLE8">高校Mooc资源共享平台</div>
          </div></td>
          <td width="935" align="center"><span class="STYLE4">当前用户：<%=request.getSession().getAttribute("username")%> 权限：<%=request.getSession().getAttribute("cx")%>  &nbsp;</span></td>
          <%
          	System.out.print(request.getSession().getAttribute("cx"));
          %>
          <td width="935" align="left"><span class="STYLE4"> </span></td>
          </tr>
      </tbody>
    </table>
    <table height="26" border="0" align="left" cellpadding="0" cellspacing="0" class="subbg" NAME=t1>
      <tbody>
        <tr align="middle">
          <td width="71" height="26" align="center" valign="middle" background="images/top_tt_bg.gif"><a
            href="index.jsp" 
          target="_parent" class="STYLE2">返回首页</a></td>
          <td align="center" class="topbar"><span class="STYLE2"> </span></td>
          <td align="center" class="topbar"><span class="STYLE2"> </span></td>
          <td width="71" align="center" valign="middle" background="images/top_tt_bg.gif"><a  href="logout.jsp" target="_top" class="STYLE2">退出登录</a></td>
        </tr>
      </tbody>
    </table></td>
  </tr>
  <tr height="6">
    <td bgcolor="#1F3A65" background="images/top_bg.jpg"></td>
  </tr>
</table>
<script language="javascript">
<!--
var displayBar=true;
function switchBar(obj){
	if (displayBar)
	{
		parent.frame.cols="0,*";
		displayBar=false;
		obj.title="打开左边管理菜单";
	}
	else{
		parent.frame.cols="195,*";
		displayBar=true;
		obj.title="关闭左边管理菜单";
	}
}
//-->
</script>
  </body>
</html>

