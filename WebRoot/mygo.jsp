<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>后台管理页面左侧栏</title>
  </head>
  <body>
  <%
	if (request.getSession().getAttribute("cx").equals("学生")){
		response.sendRedirect("left2.jsp");
	}else if (request.getSession().getAttribute("cx").equals("教师")){
		response.sendRedirect("left3.jsp");
	}else{
		response.sendRedirect("left.jsp");
	}
 %>
  </body>
</html>

