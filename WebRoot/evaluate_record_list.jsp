<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>评价信息列表</title>
    <LINK href="CSS.css" type=text/css  rel=stylesheet>
  </head>
<body >
  <p>评价信息列表：</p>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
  	<td width="12%" bgcolor='#A4B6D7'>用户名</td>
    <td width="12%" bgcolor='#A4B6D7'>评价人</td>
    <td width="12%" bgcolor='#A4B6D7'>课程</td>
    <td width="4%" bgcolor='#A4B6D7'>视频名</td>
    <td width="10%" bgcolor='#A4B6D7'>得分</td>
    <td width="11%" bgcolor='#A4B6D7'>评价内容</td>
    <td width="8%" bgcolor="A4B6D7">操作</td>
  </tr>
  <%
  String sqlTotal="select count(*) from evaluate_record";
  ResultSet RS_result1=connDbBean.executeQuery(sqlTotal);
  Integer total=0;
  while(RS_result1.next()){
	  total=RS_result1.getInt(1);
  }
  RS_result1.close();
  connDbBean.closeConnection();
  
  Integer totalPageNum=total==0?0:(total%5==0?total/5:total/5+1);
  Integer pageNum=Integer.parseInt(request.getParameter("pageNum")==null?"1":request.getParameter("pageNum"));;
  String sql="select e.id eva_id,e.eva_Person_Id,y.yonghuming,y.xingming,x.ID,x.kecheng,x.mingcheng,e.score,e.eva_Content"+
		  " from evaluate_record e left join yonghuzhuce  y on e.eva_Person_Id=y.yonghuming left join xuexishipin x"+
		  " on e.video_Id=x.ID order by e.id asc";
 sql+=" limit "+(pageNum-1)*5+",5";
 
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String evaId="";
 String yonghuming="";
 String xingming="";
 String kecheng="";
 String mingcheng="";
 String score="";
 String eva_Content="";
 int i=0;
 while(RS_result.next()){
	 i=i+1;
	 evaId=RS_result.getString("eva_id");
	 yonghuming=RS_result.getString("yonghuming");
	 xingming=RS_result.getString("xingming");
	 kecheng=RS_result.getString("kecheng");
	 mingcheng=RS_result.getString("mingcheng");
	 score=RS_result.getString("score");
	 eva_Content=RS_result.getString("eva_Content");
%>
  <tr>
  	<td><%=yonghuming %></td>
    <td><%=xingming %></td>
    <td><%=kecheng %></td>
    <td><%=mingcheng %></td>
    <td><%=score %></td>
    <td><%=eva_Content %></td>
    <td>  
    	<a href="del.jsp?id=<%=evaId %>&tablename=evaluate_record" onClick="return confirm('真的要删除？')">删除</a> 
  	</td>
  </tr>
  	<%
  }
 RS_result.close();
 connDbBean.closeConnection();
   %>
</table>
<br>
数据共<%=total %>条,
<a href="evaluate_record_list.jsp?pageNum=1">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="evaluate_record_list.jsp?pageNum=<%=pageNum-1 %>"
<%
  if((pageNum-1)<=0){
%>
    disable="true" onclick="return false"
<%
  }
%>
>上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="evaluate_record_list.jsp?pageNum=<%=pageNum+1 %>"
<%
  if((pageNum+1)>totalPageNum){
%>
    disable="true" onclick="return false"
<%
  }
%>
>下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="evaluate_record_list.jsp?pageNum=<%=totalPageNum %>">末页</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
</body>
</html>

