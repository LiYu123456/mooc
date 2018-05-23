<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>学习视频</title><LINK href="CSS.css" type=text/css rel=stylesheet><script language="javascript" src="js/Calendar.js"></script>
  </head>
<%
	String sql;
	ResultSet RS_result;
%>
<body>
  	<p>已有学习视频列表：</p>
	<form name="form1" id="form1" method="post" action="">
		搜索: 编号：<input name="bianhao" type="text" id="bianhao" /> 
		名称：<input name="mingcheng" type="text" id="mingcheng" />
		课程：<select name='kecheng' id='kecheng'>
			<option value="">所有</option>
			<% 
				sql="select kechengmingcheng from kechengxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){
			%>
			<option value="<%= RS_result.getString("kechengmingcheng")%>" >
				<%=RS_result.getString("kechengmingcheng")%>
			</option><%}%>
			</select> 
		主讲人：<input name="zhujiangren" type="text" id="zhujiangren" />
		<input type="submit" name="Submit" value="查找" />
	</form>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>编号</td><td bgcolor='#CCFFFF'>名称</td>
    <td bgcolor='#CCFFFF'>课程</td><td bgcolor='#CCFFFF'>主讲人</td>
    <td bgcolor='#CCFFFF'>文件</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">审核状态</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
<%
	int curpage=1;//当前页
	int page_record=10;//每页显示的记录数
	int zgs=0;
	int zys=0;
	//用下面的方法（sql查询完成，速度快）
	String hsgnpage=request.getParameter("page");
	String fysql="select count(id) as ss from xuexishipin";
	ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
	while(RS_resultfy.next()){
		zgs=Integer.parseInt(RS_resultfy.getString("ss"));
		zys=zgs/page_record+1;
	}
	if (hsgnpage!=null){
		curpage=Integer.parseInt(request.getParameter("page"));//获取传递的值，需要显示的页
	}else{
		curpage=1;
	}
	if (curpage==0){
		curpage=1;
	}
	if(curpage>zys){
		curpage=zys;
	}
  	sql="select * from xuexishipin where 1=1 ";
	if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";}	if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";}	if(request.getParameter("kecheng")=="所有" ||request.getParameter("kecheng")==null ){}else{sql=sql+" and kecheng like '%"+new String(request.getParameter("kecheng").getBytes("8859_1"))+"%'";}	if(request.getParameter("zhujiangren")=="" ||request.getParameter("zhujiangren")==null ){}else{sql=sql+" and zhujiangren like '%"+new String(request.getParameter("zhujiangren").getBytes("8859_1"))+"%'";}
  	sql=sql+" limit " +((curpage-1)*page_record) + "," + page_record;
  	RS_result=connDbBean.executeQuery(sql);
 	String id="";
 	String bianhao="";
 	String mingcheng="";
 	String kecheng="";
 	String zhujiangren="";
 	String neirong="";
 	String wenjian="";
 	String addtime="";
 	String checkStatus="";
 	int i=0;
 	while(RS_result.next()){
 		i=i+1;
 		id=RS_result.getString("id");
		bianhao=RS_result.getString("bianhao");
		mingcheng=RS_result.getString("mingcheng");
		kecheng=RS_result.getString("kecheng");
		zhujiangren=RS_result.getString("zhujiangren");
		neirong=RS_result.getString("neirong");
		wenjian=RS_result.getString("wenjian");
 		addtime=RS_result.getString("addtime");
 		checkStatus=RS_result.getString("checkStatus");
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=bianhao %></td>
    <td><%=mingcheng %></td>
    <td><%=kecheng %></td>
    <td><%=zhujiangren %></td>
    <td>
    	<a href='downloadServlet?id=<%=id%>' target='_blank'>下载</a>
    </td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="138" align="center">
    <%
      if (request.getSession().getAttribute("cx").equals("教师")){
    %>
    	<%=checkStatus%>
    <%
      }else{
      if("未审核".equals(checkStatus)){
    %>
    	<a href="check.jsp?id=<%=id%>&value=已审核&columnName=checkStatus&tablename=xuexishipin"><%=checkStatus%></a>
    <%}else{%>
    	<a href="check.jsp?id=<%=id%>&value=未审核&columnName=checkStatus&tablename=xuexishipin"><%=checkStatus%></a>
    <%}}%>
    </td>
    <td width="90" align="center">
    	<a href="xuexishipin_updt.jsp?id=<%=id%>">修改</a>
    	<a href="del.jsp?id=<%=id %>&tablename=xuexishipin" onclick="return confirm('真的要删除？')">删除</a> 
    	<a href="xuexishipin_detail.jsp?id=<%=id%>" target="_blank">详细</a>
    </td>
  </tr>
<%
  }
%>
</table>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onclick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　
<a href="xuexishipin_list.jsp?page=1">首页</a>　
<a href="xuexishipin_list.jsp?page=<%= curpage-1%>">上一页</a>　
<A href="xuexishipin_list.jsp?page=<%= curpage+1%>">下一页</A>　
<a href="xuexishipin_list.jsp?page=<%=zys %>">尾页</A>　
当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
</body>
</html>
