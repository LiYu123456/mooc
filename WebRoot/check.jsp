<%@ page language="java"  pageEncoding="UTF-8" import="java.sql.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("UTF-8"); 
response.setCharacterEncoding("UTF-8"); 
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
  </head>
<body>
<%
String value=request.getParameter("value");
String id=request.getParameter("id");
String tablename=request.getParameter("tablename");
String valueColumn=request.getParameter("columnName");
String sql="";
sql="update "+tablename+" set "+valueColumn+"='"+value+"' where id="+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('操作成功!!');location.href='"+request.getHeader("Referer")+"';</script>");
%>
  </body>
</html>


