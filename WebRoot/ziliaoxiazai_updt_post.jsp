<%@ page language="java"  pageEncoding="UTF-8" import="java.sql.*" %>
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
String bianhao=request.getParameter("bianhao");String mingcheng=request.getParameter("mingcheng");String leibie=request.getParameter("leibie");String kecheng=request.getParameter("kecheng");String jianjie=request.getParameter("jianjie");String fujian=request.getParameter("fujian");
String id=request.getParameter("id");
String sql="update ziliaoxiazai set bianhao='"+bianhao+"',mingcheng='"+mingcheng+"',leibie='"+leibie+"',kecheng='"+kecheng+"',jianjie='"+jianjie+"',fujian='"+fujian+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('修改成功!!');location.href='ziliaoxiazai_updt.jsp?id="+id+"';</script>");
%>
  </body>
</html>


