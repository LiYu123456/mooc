<%@ page language="java"  pageEncoding="UTF-8" import="java.sql.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>注册处理页面</title>
  </head>
  <body>
  <% 
	String yonghuming=request.getParameter("yonghuming");
  	String mima=request.getParameter("mima");
  	String xingming=new String(request.getParameter("xingming").getBytes("ISO-8859-1"),"UTF-8");
  	String xingbie=new String(request.getParameter("xingbie").getBytes("ISO-8859-1"),"UTF-8");
  	String regType=new String(request.getParameter("regType").getBytes("ISO-8859-1"),"UTF-8");
  	String chushengnianyue=request.getParameter("chushengnianyue");
  	String QQ=request.getParameter("QQ");
  	String youxiang=request.getParameter("youxiang");
  	String dianhua=request.getParameter("dianhua");
  	String shenfenzheng=request.getParameter("shenfenzheng");
  	String touxiang=request.getParameter("touxiang");
  	String dizhi=new String(request.getParameter("dizhi").getBytes("ISO-8859-1"),"UTF-8");
  	String beizhu=new String(request.getParameter("beizhu").getBytes("ISO-8859-1"),"UTF-8");
	String tag=request.getParameter("tag");
  	ResultSet RS_result=connDbBean.executeQuery("select * from yonghuzhuce where yonghuming='"+yonghuming+"' and regType='"+regType+"'");
	
	if(RS_result.next()){
		out.print("<script>alert('该用户名已经存在,请换其他名称的用户名!');window.history.go(-1);</script>");
	}else if("1".equals(tag)){
  	  	String sql="insert into yonghuzhuce(yonghuming,mima,xingming,xingbie,regType,chushengnianyue,QQ,youxiang,dianhua,shenfenzheng,touxiang,dizhi,beizhu) values('"+yonghuming+"','"+mima+"','"+xingming+"','"+xingbie+"','"+regType+"','"+chushengnianyue+"','"+QQ+"','"+youxiang+"','"+dianhua+"','"+shenfenzheng+"','"+touxiang+"','"+dizhi+"','"+beizhu+"') ";
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('注册成功，请待管理员审核后方可登陆！');location.href='userreg2.jsp';</script>");
	}else{
		String sql="insert into yonghuzhuce(yonghuming,mima,xingming,xingbie,regType,chushengnianyue,QQ,youxiang,dianhua,shenfenzheng,touxiang,dizhi,beizhu) values('"+yonghuming+"','"+mima+"','"+xingming+"','"+xingbie+"','"+regType+"','"+chushengnianyue+"','"+QQ+"','"+youxiang+"','"+dianhua+"','"+shenfenzheng+"','"+touxiang+"','"+dizhi+"','"+beizhu+"') ";
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('注册成功，请待管理员审核后方可登陆！');location.href='index.jsp';</script>");
	}
	RS_result.close();
	connDbBean.closeConnection();
 %>
  </body>
</html>

