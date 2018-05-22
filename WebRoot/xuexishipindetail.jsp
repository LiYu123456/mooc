 <%
	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")  //判断用户是否已经登陆，如果没有，则给出登陆框，如果有则显示当前用户信息
	{
			out.print("<script>alert('对不起,请您先登陆!');window.history.go(-1);</script>");
	}
	 %>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
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
</style>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

  <%
  String id=request.getParameter("id");
  connDbBean.executeUpdate("update xinwentongzhi set dianjilv=dianjilv+1 where id="+id);
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
                        <td width="22%" align="center" valign="bottom"><span class="STYLE1">学习视频</span></td>
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
  String sql="select * from xuexishipin where id="+id;
  String bianhao="";String mingcheng="";String kecheng="";String zhujiangren="";String neirong="";String wenjian="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");
  mingcheng=RS_result.getString("mingcheng");
  kecheng=RS_result.getString("kecheng");
  zhujiangren=RS_result.getString("zhujiangren");
  neirong=RS_result.getString("neirong");
  wenjian=RS_result.getString("wenjian");
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
    <td width='11%'>课程：</td>
    <td width='39%'><%=kecheng%></td>
    <td width='11%'>主讲人：</td>
    <td width='39%'><%=zhujiangren%></td>
  </tr>
  <tr>
  	<td>视频下载</td>
  	<td colspan="3">
  		<a href='downloadServlet?id=<%=id%>'>下载</a>
  	</td>
  </tr>
  <tr>
    <td height="50" colspan="4">
	    <table border=1 cellPadding=4 cellSpacing=0 width=500     align=center>
	      <tr>
	        <td width="236" align=center   class=tdc1></td>
	      </tr>
	      <tr>
	      	<td>
		       <OBJECT CLASSID=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 CODEBASE=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0 WIDTH=541 HEIGHT=374>
			       <PARAM NAME=movie VALUE=<%=wenjian%>>
			       <PARAM NAME=quality VALUE=high>
			       <EMBED SRC=<%=wenjian%> QUALITY=high PLUGINSPAGE=http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash TYPE=application/x-shockwave-flash WIDTH=541 HEIGHT=374></EMBED>
		       </OBJECT>
	      	</td>
	      </tr>
	    </table>
    </td>
    <tr>
    	<td height="66" colspan="4"><%=neirong%></td>
    </tr>
    <tr>
	    <td colspan="4" align="center"><br>
	    	<form action="./evaluateInfo_post.jsp" method="POST" id="form1">
		    	<label for="label5">5分</label><input type="radio" name="evlValue" value="5" id="label5"/>&nbsp;&nbsp;&nbsp;&nbsp;
		    	<label for="label4">4分</label><input type="radio" name="evlValue" value="4" id="label4"/>&nbsp;&nbsp;&nbsp;&nbsp;
		    	<label for="label3">3分</label><input type="radio" name="evlValue" value="3" id="label3"/>&nbsp;&nbsp;&nbsp;&nbsp;
		    	<label for="label2">2分</label><input type="radio" name="evlValue" value="2" id="label2"/>&nbsp;&nbsp;&nbsp;&nbsp;
		    	<label for="label1">1分</label><input type="radio" name="evlValue" value="1" id="label1"/>
		    	<input type="hidden" value="<%=id %>" name="videoId"/>
		    	<br/>
		    	<br/>
		    	<br/>
				<textarea name="ping"></textarea>
				<input type="submit" name="Submit5" value=评测"  />
			</form>
		</td>
  	</tr>
</table>
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
		<td width="1003" height="116" background="qtimages/1_03.gif">
			<%@ include file="qtdown.jsp"%>
		</td>
	</tr>
</table>
</body>
</html>