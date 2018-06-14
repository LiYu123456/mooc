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
 

String bianhao=request.getParameter("bianhao");
  String zhuanye=request.getParameter("zhuanye");
  String tishu=request.getParameter("tishu");
  String fenzhi=request.getParameter("fenzhi");
//ResultSet RS_result=connDbBean.executeQuery("select * from [fdsfds] where fdsfssd='"+fdsfd+"'");

// if(RS_result.next())
//{
//out.print("<script>alert('该班级已经存在,请换其他名称的班级!');window.history.go(-1);</script>");
//	}
//else{
	StringBuffer sbuffer=new StringBuffer();
	String selectType=(String)request.getSession().getAttribute("selectType");
	if(selectType!=null&&selectType.indexOf("choice")>=0){
		sbuffer.append(",'choice'");
	}
	if(selectType!=null&&selectType.indexOf("judge")>=0){
		sbuffer.append(",'judge'");
	}	
	String re=" and questionType  in ("+sbuffer.substring(1)+") ";
	String sql="select id from xuanzeti where zhuanye='"+zhuanye+"' ";
	if(selectType==null||"".equals(selectType)){
		sql+=" order by rand() limit " +tishu;
	}else{
		sql+=re+" order by rand() limit " +tishu;
	}
	System.out.println(sql);
		 ResultSet RS_result=connDbBean.executeQuery(sql);
		 String id="";
 	while(RS_result.next()){
		id=id+RS_result.getString("id")+",";
	
	}
 	if(id.length()>0){
		id=id.substring(0,id.length()-1);

  	  	 sql="insert into zidongzujuan(bianhao,zhuanye,tishu,fenzhi,timu) values('"+bianhao+"','"+zhuanye+"','"+tishu+"','"+fenzhi+"','"+id+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
		
	
  	  	out.print("<script>alert('添加成功!!');location.href='zidongzujuan_list.jsp';</script>");
 	}else{
 		out.print("<script>alert('没有对应的试题!!');location.href='zidongzujuan_list.jsp';</script>");
 	}
//	}
//RS_result.close();

 %>
  </body>
</html>

