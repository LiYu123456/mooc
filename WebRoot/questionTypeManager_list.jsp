<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>题型管理</title><LINK href="CSS.css" type=text/css rel=stylesheet>
  </head>
  <body >
  <p>已有用户注册列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索: 用户名：<input name="yonghuming" type="text" id="yonghuming" /> 姓名：<input name="xingming" type="text" id="xingming" /> QQ：<input name="QQ" type="text" id="QQ" /> 邮箱：<input name="youxiang" type="text" id="youxiang" /> 电话：<input name="dianhua" type="text" id="dianhua" /> 身份证：<input name="shenfenzheng" type="text" id="shenfenzheng" />
   <input type="submit" name="Submit" value="查找" />
</form>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>用户名</td>
    <td bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF'>出生年月</td>
    <td bgcolor='#CCFFFF'>QQ</td>
    <td bgcolor='#CCFFFF'>邮箱</td>
    <td bgcolor='#CCFFFF'>电话</td>
    <td bgcolor='#CCFFFF'>地址</td>
    <td bgcolor='#CCFFFF'>备注</td>
    <td width="60" align="center" bgcolor="CCFFFF">审核</td>
    <td bgcolor='#CCFFFF'>授权题型</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
	int curpage=1;//当前页
	int page_record=10;//每页显示的记录数
	int zgs=0;
	int zys=0;
	//用下面的方法（sql查询完成，速度快）
	String hsgnpage=request.getParameter("page");
	String RegType=request.getParameter("RegType");
	String fysql="select count(id) as ss from yonghuzhuce";
	if("1".equals(RegType)){
		fysql+=" where regType='教师'";
	}else if("0".equals(RegType)){
		fysql+=" where regType='学生'";
	}
	ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
	while(RS_resultfy.next()){
		zgs=Integer.parseInt(RS_resultfy.getString("ss"));
		zys=zgs/page_record+1;
	}
	if (hsgnpage!=null){
		curpage=Integer.parseInt(request.getParameter("page"));//获取传递的值，需要显示的页
	}
	else{
		curpage=1;
	}
	if (curpage==0){
		curpage=1;
	}
	if(curpage>zys){
		curpage=zys;
	}
	String sql="";
	sql="select * from yonghuzhuce where 1=1 ";
	if("1".equals(RegType)){
		sql+=" and regType='教师'";
	}else if("0".equals(RegType)){
		sql+=" and regType='学生'";
	}
	if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+new String(request.getParameter("yonghuming").getBytes("8859_1"))+"%'";}
	if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+new String(request.getParameter("xingming").getBytes("8859_1"))+"%'";}
	if(request.getParameter("QQ")=="" ||request.getParameter("QQ")==null ){}else{sql=sql+" and QQ like '%"+new String(request.getParameter("QQ").getBytes("8859_1"))+"%'";}
	if(request.getParameter("youxiang")=="" ||request.getParameter("youxiang")==null ){}else{sql=sql+" and youxiang like '%"+new String(request.getParameter("youxiang").getBytes("8859_1"))+"%'";}
	if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+new String(request.getParameter("dianhua").getBytes("8859_1"))+"%'";}
	if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+new String(request.getParameter("shenfenzheng").getBytes("8859_1"))+"%'";}
	sql=sql+" limit " +((curpage-1)*page_record) + "," + page_record;
	ResultSet RS_result=connDbBean.executeQuery(sql);
	String id="";
	String yonghuming="";String mima="";
	String xingming="";String xingbie="";
	String chushengnianyue="";String QQ="";String youxiang="";
	String dianhua="";String shenfenzheng="";String touxiang="";
	String dizhi="";String beizhu="";
	String addtime="";String issh="";
	String selectQueType="";
	int i=0;
	while(RS_result.next()){
	i=i+1;
	id=RS_result.getString("id");
	yonghuming=RS_result.getString("yonghuming");
	mima=RS_result.getString("mima");
	xingming=RS_result.getString("xingming");
	xingbie=RS_result.getString("xingbie");
	chushengnianyue=RS_result.getString("chushengnianyue");
	QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");dianhua=RS_result.getString("dianhua");shenfenzheng=RS_result.getString("shenfenzheng");touxiang=RS_result.getString("touxiang");dizhi=RS_result.getString("dizhi");beizhu=RS_result.getString("beizhu");
	addtime=RS_result.getString("addtime");
	issh=RS_result.getString("issh");
	selectQueType=RS_result.getString("selectQueType");
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=yonghuming %></td>
    <td><%=xingming %></td>
    <td><%=chushengnianyue %></td>
    <td><%=QQ %></td>
    <td><%=youxiang %></td>
    <td><%=dianhua %></td>
    <td><%=dizhi %></td><td><%=beizhu %></td>
    <td width="90" align="center">
    	<%=issh%>
    </td>
    <td>
    	<%
    		if(selectQueType!=null&&!"".equals(selectQueType)){
    			selectQueType=selectQueType.replaceAll("choice", "选择题").replaceAll("judge", "判断题");
    		}else{
    			selectQueType="";
    		}
    	%>
    	<%= selectQueType%>
    </td>
    <td width="90" align="center">
    	<a href="selectQueType_updt.jsp?id=<%=id%>">修改</a>
    </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　
<a href="yonghuzhuce_list.jsp?RegType=<%=RegType %>&page=1">首页</a>　
<a href="yonghuzhuce_list.jsp?RegType=<%=RegType %>&page=<%= curpage-1%>">上一页</a>　
<A href="yonghuzhuce_list.jsp?RegType=<%=RegType %>&page=<%= curpage+1%>">下一页</A>　
<a href="yonghuzhuce_list.jsp?RegType=<%=RegType %>&page=<%=zys %>">尾页</A>　当前第
<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>
