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
String zhuanye=request.getParameter("zhuanye");
  String xueke=request.getParameter("xueke");
  String timu=request.getParameter("timu");
  String questtype=request.getParameter("questtype");
  String xuanxiangA=request.getParameter("xuanxiangA");
  String xuanxiangB=request.getParameter("xuanxiangB");
  String xuanxiangC=request.getParameter("xuanxiangC");
  String xuanxiangD=request.getParameter("xuanxiangD");
  String daan=request.getParameter("daan");
  String nanduxishu=request.getParameter("nanduxishu");
String id=request.getParameter("id");
String sql="update xuanzeti set zhuanye='"+zhuanye+"',xueke='"+xueke+"',timu='"+timu+"',xuanxiangA='"+xuanxiangA+"',xuanxiangB='"+xuanxiangB+"',xuanxiangC='"+xuanxiangC+"',xuanxiangD='"+xuanxiangD+"',daan='"+daan+"',nanduxishu='"+nanduxishu+"' where id= "+id+" and questionType='"+questtype+"'";
connDbBean.executeUpdate(sql);
out.print("<script>alert('修改成功!!');location.href='xuanzeti_list.jsp';</script>");
%>
  </body>
</html>


