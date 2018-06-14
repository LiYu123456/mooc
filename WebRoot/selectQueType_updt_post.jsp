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
String selectedType="";
String[] selectQueType=request.getParameterValues("selectedQueType");
if(selectQueType!=null){
	StringBuffer sBuffer=new StringBuffer();
	for(String str:selectQueType){
		sBuffer.append(","+str);
	}
	selectedType=sBuffer.substring(1);
}

String id=request.getParameter("id");
String sql="update yonghuzhuce set selectQueType='"+selectedType+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('修改成功!!');location.href='./questionTypeManager_list.jsp?RegType=1';</script>");
%>
  </body>
</html>


