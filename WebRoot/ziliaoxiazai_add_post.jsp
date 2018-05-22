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
//ResultSet RS_result=connDbBean.executeQuery("select * from [fdsfds] where fdsfssd='"+fdsfd+"'");

// if(RS_result.next())
//{
//out.print("<script>alert('该班级已经存在,请换其他名称的班级!');window.history.go(-1);</script>");
//	}
//else{

	
  	  	String sql="insert into ziliaoxiazai(bianhao,mingcheng,leibie,kecheng,jianjie,fujian) values('"+bianhao+"','"+mingcheng+"','"+leibie+"','"+kecheng+"','"+jianjie+"','"+fujian+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('添加成功!!');location.href='ziliaoxiazai_add.jsp';</script>");
  	  
//	}
//RS_result.close();

 %>
  </body>
</html>

