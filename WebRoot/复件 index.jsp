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
			<%@ include file="qttop.jsp"%>
		</td>
	</tr>
	<tr>
		<td><table id="__01" width="1003" height="694" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><%@ include file="qtleft.jsp"%></td>
            <td valign="top"><table id="__01" width="757" height="694" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table id="__01" width="757" height="247" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="757" height="34" background="qtimages/1_02_02_01_01.gif"><table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="22%" align="center" valign="bottom"><span class="STYLE1">站内新闻</span></td>
                        <td width="78%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="757" height="205" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><img src="qtimages/1_02_02_01_02_01.gif" width="13" height="205" alt=""></td>
                        <td width="491" height="205" valign="top"><table class="newsline" cellspacing="0" cellpadding="0" width="98%" 
                  align="center" border="0">
                          <tbody>
                            <%
							String sql="";
							sql="select id,biaoti,addtime from xinwentongzhi order by id desc limit 7";
							 String id="";
 String biaoti="";
 String addtime="";
 int i=0;
  ResultSet RS_result=connDbBean.executeQuery(sql);
							while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
biaoti=RS_result.getString("biaoti");
 addtime=RS_result.getString("addtime");
 
 
							
							%>
                            <tr>
                              <td width="3%" height="24" class="STYLE4"><img height="7" 
                                src="qtimages/1.gif" 
                                width="7" /></td>
                              <td width="81%"><a 
                        href="gg_detail.jsp?id=<%=id%>"><%=biaoti%></a>  </td>
                              <td width="16%">
                                <%
                              
out.print(addtime.substring(0,10));
%>
                             </td>
                            </tr>
                            <%
							}
							%>
                          </tbody>
                        </table></td>
                        <td width="226" height="205">
						<SCRIPT type=text/javascript>
var focus_width=226;
var focus_height=180;
var text_height=20;
var swf_height = focus_height+text_height;
var pics="";
var links="";
var texts="";
<%
	String sqlbht;
	sqlbht="select id,biaoti,shouyetupian from xinwentongzhi where shouyetupian<>'' and shouyetupian<>'null' order by id desc limit 5";
	ResultSet RS_resultbht=connDbBean.executeQuery(sqlbht);
	String idbht="";
	String biaotibht="";
	String shouyetupianbht="";
	 while(RS_resultbht.next()){
 shouyetupianbht=shouyetupianbht+RS_resultbht.getString("shouyetupian")+"|";
 idbht=idbht+"gg_detail.jsp?id="+RS_resultbht.getString("id")+"|";
 biaotibht=biaotibht+RS_resultbht.getString("biaoti")+"|";
 }
 shouyetupianbht=shouyetupianbht.substring(0,shouyetupianbht.length()-1);
 idbht=idbht.substring(0,idbht.length()-1);
 biaotibht=biaotibht.substring(0,biaotibht.length()-1);
%>
pics="<%=shouyetupianbht%>";
links="<%=idbht%>";
texts="<%=biaotibht%>";
document.write('<embed src="qtimages/pixviewer.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#ffffff" quality="Best" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">');

</SCRIPT>
						</td>
                        <td><img src="qtimages/1_02_02_01_02_04.gif" width="27" height="205" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_03.gif" width="757" height="8" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="757" height="219" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="757" height="37" background="qtimages/1_02_02_02_01.gif"><table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="22%" align="center" valign="bottom"><span class="STYLE1">会员风彩</span></td>
                        <td width="78%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="757" height="174" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><img src="qtimages/1_02_02_02_02_01.gif" width="14" height="174" alt=""></td>
                        <td width="714" height="174"><table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <%
				  	sql="select id,touxiang,xingming from yonghuzhuce where touxiang<>'' order by id desc limit 4";
					RS_result=connDbBean.executeQuery(sql);
					String xingming="";String touxiang="";
					 while(RS_result.next()){
 id=RS_result.getString("id");
 xingming=RS_result.getString("xingming");touxiang=RS_result.getString("touxiang");


				  %>
                            <td align="center"><table width="150" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td height="129" align="center"><a href="<%=touxiang%>"><img src="<%=touxiang%>" width="129" height="123" border="0" /></a></td>
                                </tr>
                                <tr>
                                  <td height="26" align="center"><%=xingming%></td>
                                </tr>
                            </table></td>
                            <%
				  	}
				  %>
                          </tr>
                        </table></td>
                        <td><img src="qtimages/1_02_02_02_02_03.gif" width="29" height="174" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_02_03.gif" width="757" height="8" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="757" height="219" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="757" height="37" background="qtimages/1_02_02_02_01.gif"><table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="22%" align="center" valign="bottom"><span class="STYLE1">系统简介</span></td>
                          <td width="78%">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="757" height="174" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><img src="qtimages/1_02_02_02_02_01.gif" width="14" height="174" alt=""></td>
                          <td width="714" height="174" align="left">
                            <%
							 sql="select content from dx where leibie='系统简介'";
  String neirong="";
   RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
neirong=RS_result.getString("content");
   %>
                        
                            <%=neirong %>
                            <%}%></td>
                          <td><img src="qtimages/1_02_02_02_02_03.gif" width="29" height="174" alt=""></td>
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