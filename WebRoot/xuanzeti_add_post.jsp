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
 

String zhuanye=request.getParameter("zhuanye");String xueke=request.getParameter("xueke");String timu=request.getParameter("timu");String xuanxiangA=request.getParameter("xuanxiangA");String xuanxiangB=request.getParameter("xuanxiangB");String xuanxiangC=request.getParameter("xuanxiangC");String xuanxiangD=request.getParameter("xuanxiangD");String daan=request.getParameter("daan");String nanduxishu=request.getParameter("nanduxishu");
//ResultSet RS_result=connDbBean.executeQuery("select * from [fdsfds] where fdsfssd='"+fdsfd+"'");

// if(RS_result.next())
//{
//out.print("<script>alert('该班级已经存在,请换其他名称的班级!');window.history.go(-1);</script>");
//	}
//else{

	
  	  	String sql="insert into xuanzeti(zhuanye,xueke,timu,xuanxiangA,xuanxiangB,xuanxiangC,xuanxiangD,daan,nanduxishu) values('"+zhuanye+"','"+xueke+"','"+timu+"','"+xuanxiangA+"','"+xuanxiangB+"','"+xuanxiangC+"','"+xuanxiangD+"','"+daan+"','"+nanduxishu+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('添加成功!!');location.href='xuanzeti_add.jsp';</script>");
  	  
//	}
//RS_result.close();

 %>
  </body>
</html>

