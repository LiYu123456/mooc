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
            <td valign="top">
            	<jsp:include page="qtleft.jsp"></jsp:include>
            </td>
            
            <td valign="top"><table id="__01" width="757" height="694" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td valign="top"><table id="__01" width="757" height="219" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="757" height="37" background="qtimages/1_02_02_02_01.gif"><table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="22%" align="center" valign="bottom"><span class="STYLE1">在线测试</span></td>
                        <td width="78%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="757" height="636" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="14" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="714" height="174" valign="top"><form name="form1" id="form1" method="post" action="">
                          搜索:试卷编号:
                          <input name="bianhao" type="text" id="bianhao" />
                          专业
  <input name="mingcheng" type="text" id="mingcheng" />
  <input type="submit" name="Submit5" value="查找" />
                        </form>
                          <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">
                            <tr>
                              <td width="28" align="center" bgcolor="CCFFFF">序号</td>
                              <td width="125" bgcolor='#CCFFFF'>试卷编号</td>
                              <td width="141" bgcolor='#CCFFFF'>专业</td>
                              <td width="102" bgcolor='#CCFFFF'>题数</td>
                              <td width="94" bgcolor='#CCFFFF'>分值</td>
                              <td width="154" align="center" bgcolor="CCFFFF">操作</td>
                            </tr>
                            <%
  String sql="";
  sql="select * from zidongzujuan where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and bianhao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null )
  {}
  else
  {
  	sql=sql+" and zhuanye like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String bianhao="";String zhuanye="";String tishu="";String fenzhi="";String timu="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bianhao=RS_result.getString("bianhao");zhuanye=RS_result.getString("zhuanye");tishu=RS_result.getString("tishu");fenzhi=RS_result.getString("fenzhi");
 addtime=RS_result.getString("addtime"); timu=RS_result.getString("timu");
 
 
%>
                            <tr>
                              <td width="28" align="center"><%=i %></td>
                              <td><%=bianhao %></td>
                              <td><%=zhuanye %></td>
                              <td><%=tishu %></td>
                              <td><%=fenzhi %></td>
                              <td width="154" align="center"><a href="shijuan_detail2.jsp?id=<%=id%>" >开始测试</a></td>
                            </tr>
                            <%
  }
   %>
                          </table>
                          <br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;</p>
                          <p align="center"></p>
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