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
                        <td width="22%" align="center" valign="bottom"><span class="STYLE1">热门主题</span></td>
                        <td width="78%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="757" height="636" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="14" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="714" height="174" valign="top"><table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#529C33" style="border-collapse:collapse">
                          <%
  int curpage=1;//当前页
				int page_record=20;//每页显示的记录数
				int zgs=0;
				int zys=0;
				//用下面的方法（sql查询完成，速度快）
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from xinwentongzhi where 1=1";
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
  String sql="";
  sql="select * from xinwentongzhi where 1=1 ";
  
if(request.getParameter("keyword")=="" ||request.getParameter("keyword")==null ){}else{sql=sql+" and biaoti like '%"+new String(request.getParameter("keyword").getBytes("8859_1"))+"%'";}
  sql=sql+" limit " +((curpage-1)*page_record) + "," + page_record;
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String biaoti="";String leibie="";String neirong="";String tianjiaren="";String shouyetupian="";String dianjilv="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
biaoti=RS_result.getString("biaoti");leibie=RS_result.getString("leibie");neirong=RS_result.getString("neirong");tianjiaren=RS_result.getString("tianjiaren");shouyetupian=RS_result.getString("shouyetupian");dianjilv=RS_result.getString("dianjilv");
 addtime=RS_result.getString("addtime");
 
 
%>
                          <tr>
                            <td width="30" align="center"><%=i %></td>
                            <td width="470"><a href="gg_detail.jsp?id=<%=id%>"><%=biaoti %></a></td>
                            <td width="87"><%=leibie %></td>
                            <td width="82" align="center"><%=addtime.substring(0,10) %></td>
                          </tr>
                          <%
  }
   %>
                        </table>
                          <br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="news.jsp?page=1">首页</a>　<a href="news.jsp?page=<%= curpage-1%>">上一页</a>　<A href="news.jsp?page=<%= curpage+1%>">下一页</A>　<a href="news.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
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