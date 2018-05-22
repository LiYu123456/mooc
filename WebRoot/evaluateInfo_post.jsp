<%@ page language="java"  pageEncoding="UTF-8"%>
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
 String evlValue=request.getParameter("evlValue");
 String videoId=request.getParameter("videoId");
 String content=new String(request.getParameter("ping").getBytes("ISO-8859-1"),"UTF-8");
 String evalPerson=(String)request.getSession().getAttribute("username");
 String sql="select * from evaluate_record where eva_Person_Id='"+evalPerson+"' and video_id='"+videoId+"'";
 ResultSet RS_result=connDbBean.executeQuery(sql);

 if(RS_result.next()){
	out.print("<script>alert('该用户名已经评价，不能重复评价!');window.history.go(-1);</script>");
 }else{
  	 String sql2="insert into evaluate_record(video_Id,eva_Person_Id,eva_Content,score)values('"+videoId+"','"+evalPerson+"','"+content+"',"+evlValue+");";
  	 connDbBean.executeUpdate(sql2);
  	 out.print("<script>alert('评价成功!!');history.back();</script>");
 }
 RS_result.close();
 connDbBean.closeConnection();
 %>
  </body>
</html>

