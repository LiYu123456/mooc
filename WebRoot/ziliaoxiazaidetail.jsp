 <%
	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){  //判断用户是否已经登陆，如果没有，则给出登陆框，如果有则显示当前用户信息
		out.print("<script>alert('对不起,请您先登陆!');window.history.go(-1);</script>");
	}
%>
<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
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
  String id=request.getParameter("id");
  connDbBean.executeUpdate("update xinwentongzhi set dianjilv=dianjilv+1 where id="+id);
  connDbBean.closeConnection();
   %>
<table width="1003" height="1100" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td>
			<%@ include file="qttop.jsp"%>
		</td>
	</tr>
	<tr>
		<td>
			<table id="__01" width="1003" height="694" border="0" cellpadding="0" cellspacing="0">
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
                        <td width="714" height="174" valign="top"><p align="center">
                          <%
  String sql="select * from ziliaoxiazai where id="+id;
  String bianhao="";String mingcheng="";String leibie="";String kecheng="";String jianjie="";String fujian="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
	  bianhao=RS_result.getString("bianhao");
	  mingcheng=RS_result.getString("mingcheng");
	  leibie=RS_result.getString("leibie");
	  kecheng=RS_result.getString("kecheng");
	  jianjie=RS_result.getString("jianjie");
	  fujian=RS_result.getString("fujian");
  }
   %>
</p>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
  <tr>
  	<td width='11%'>编号：</td>
    <td width='39%'><%=bianhao%></td>
    <td width='11%'>名称：</td>
    <td width='39%'><%=mingcheng%></td>
  </tr>
  <tr>
    <td width='11%'>类别：</td>
    <td width='39%'><%=leibie%></td>
    <td width='11%'>课程：</td>
    <td width='39%'><%=kecheng%></td>
  </tr>
  <tr>
    <td>下载：</td>
    <td><a href="downloadServlet?id=<%=id%>" target="_blank">点此下载</a></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width='11%' height="95">简介：</td>
    <td colspan="3"><%=jianjie%></td>
  </tr>
  <tr>
    <td colspan="4" align="center">
    	<input type="button" name="Submit5" value="返回" onClick="javascript:history.back()" />
    </td>
  </tr>
</table>
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