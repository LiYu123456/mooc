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
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
    

  </head>
  
  <body>
  <%
 
 String uid=new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");
 String pwd=new String(request.getParameter("pwd1").getBytes("ISO-8859-1"),"UTF-8");

 String sql="";
 String cx=new String(request.getParameter("cx").getBytes("ISO-8859-1"),"UTF-8");
 sql="select * from yonghuzhuce where yonghuming='"+uid+"' and mima='"+pwd+"' and issh='是' and regType='"+cx+"'";

 ResultSet RS_result=connDbBean.executeQuery(sql);
 if(!RS_result.isBeforeFirst()){
	 out.print("<script>alert('你输入的用户不存在或密码错误，或帐号未经审核,请重新登录!');window.history.go(-1);</script>");
 }
 if(RS_result.next()){
 	 session.setAttribute("username",uid);
	 session.setAttribute("cx",cx);
	 session.setAttribute("selectType",RS_result.getString("selectQueType"));
	 response.sendRedirect("index.jsp");	
 }
 RS_result.close();
 %>
  </body>
</html>

