<%@ page language="java"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<html>
<head>
<title>高校Mooc资源共享平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE1 {
	color: #185838;
	font-weight: bold;
}
.STYLE2 {
	color: #FFFF00;
	font-weight: bold;
}
.STYLE3 {color: #6D2E18}
.STYLE4 {color: #6D2E18; font-weight: bold; }


-->
</style></head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

  <%
String sql;
ResultSet RS_result;
%>
<table width="1003" height="1100" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td>
<%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td><table id="__01" width="1003" height="694" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top"><%@ include file="qtleft.jsp"%></td>
            <td valign="top"><table id="__01" width="757" height="694" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td valign="top"><table id="__01" width="757" height="219" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="757" height="37" background="qtimages/1_02_02_02_01.gif"><table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="22%" align="center" valign="bottom"><span class="STYLE1">资料下载</span></td>
                        <td width="78%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="757" height="636" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="14" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="714" height="174" valign="top"><form name="form1" id="form1" method="post" action="">
                          编号：
                              <input name="bianhao" type="text" id="bianhao" size="10" />
                          名称：
  <input name="mingcheng" type="text" id="mingcheng" />
                          类别：
                          <select name='leibie' id='leibie'>
						     <option value="">所有</option>
                            <option value="教学课件">教学课件</option>
                            <option value="常用软件">常用软件</option>
                            <option value="通知公告">通知公告</option>
                            <option value="杂志文献">杂志文献</option>
                          </select>
                          课程：
  <select name='kecheng' id='kecheng'>
    <option value="">所有</option>
    <% sql="select kechengmingcheng from kechengxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%>
    <option value="<%= RS_result.getString("kechengmingcheng")%>" ><%=RS_result.getString("kechengmingcheng")%></option>
    <%}%>
  </select>
  <input type="submit" name="Submit5" value="查找" />
                        </form>
                          <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">
                            <tr>
                              <td width="30" align="center" bgcolor="CCFFFF">序号</td>
                              <td bgcolor='#CCFFFF'>编号</td>
                              <td bgcolor='#CCFFFF'>名称</td>
                              <td bgcolor='#CCFFFF'>类别</td>
                              <td bgcolor='#CCFFFF'>课程</td>
                              <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
                              <td width="60" align="center" bgcolor="CCFFFF">操作</td>
                            </tr>
                            <%
   int curpage=1;//当前页
				int page_record=10;//每页显示的记录数
				int zgs=0;
				int zys=0;
				//用下面的方法（sql查询完成，速度快）
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from ziliaoxiazai";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  zys=zgs/page_record+1;
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//获取传递的值，需要显示的页
				}
				else
				{
				curpage=1;
				}
				if (curpage==0)
				{
					curpage=1;
				}
				if(curpage>zys)
				{
					curpage=zys;
				}
   sql="";
  sql="select * from ziliaoxiazai where 1=1 ";
  
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";}
if(request.getParameter("leibie")=="所有" ||request.getParameter("leibie")==null ){}else{sql=sql+" and leibie like '%"+new String(request.getParameter("leibie").getBytes("8859_1"))+"%'";}
if(request.getParameter("kecheng")=="所有" ||request.getParameter("kecheng")==null ){}else{sql=sql+" and kecheng like '%"+new String(request.getParameter("kecheng").getBytes("8859_1"))+"%'";}
  sql=sql+" limit " +((curpage-1)*page_record) + "," + page_record;
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String bianhao="";String mingcheng="";String leibie="";String kecheng="";String jianjie="";String fujian="";
 String addtime="";
 int i=0;
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bianhao=RS_result.getString("bianhao");mingcheng=RS_result.getString("mingcheng");leibie=RS_result.getString("leibie");kecheng=RS_result.getString("kecheng");jianjie=RS_result.getString("jianjie");fujian=RS_result.getString("fujian");
 addtime=RS_result.getString("addtime");
%>
                            <tr>
                              <td width="30" align="center"><%=i %></td>
                              <td><%=bianhao %></td>
                              <td><%=mingcheng %></td>
                              <td><%=leibie %></td>
                              <td><%=kecheng %></td>
                              <td width="138" align="center"><%=addtime %></td>
                              <td width="90" align="center"><a href="ziliaoxiazaidetail.jsp?id=<%=id%>">详细</a></td>
                            </tr>
                            <%
  }
   %>
                          </table>
                          <br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="ziliaoxiazailist.jsp?page=1">首页</a>　<a href="ziliaoxiazailist.jsp?page=<%= curpage-1%>">上一页</a>　<A href="ziliaoxiazailist.jsp?page=<%= curpage+1%>">下一页</A>　<a href="ziliaoxiazailist.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
<p align="center">&nbsp;</p>
                          <p align="center">&nbsp;</p>
<P align=center>&nbsp;</P>
                          </td>
                        <td width="29" background="qtimages/1_02_02_02_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_02_03.gif" width="757" height="8" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
            </table></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td width="1003" height="116" background="qtimages/1_03.gif"><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>
</body>
</html>