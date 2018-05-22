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
String bianhao=request.getParameter("bianhao");String mingcheng=request.getParameter("mingcheng");String kecheng=request.getParameter("kecheng");String zhujiangren=request.getParameter("zhujiangren");String neirong=request.getParameter("neirong");String wenjian=request.getParameter("wenjian");
String id=request.getParameter("id");
String sql="update xuexishipin set bianhao='"+bianhao+"',mingcheng='"+mingcheng+"',kecheng='"+kecheng+"',zhujiangren='"+zhujiangren+"',neirong='"+neirong+"',wenjian='"+wenjian+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('修改成功!!');location.href='xuexishipin_updt.jsp?id="+id+"';</script>");
%>
  </body>
</html>


