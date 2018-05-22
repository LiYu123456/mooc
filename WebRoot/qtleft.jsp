<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<META content="MSHTML 6.00.2800.1106" name=GENERATOR>
</HEAD>
<table id="__01" width="246" height="694" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table id="__01" width="246" height="229" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="246" height="36" background="qtimages/1_02_01_01_01.gif"><table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="68%" align="center" valign="bottom"><span class="STYLE1">系统公告</span></td>
                        <td width="32%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="246" height="180" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><img src="qtimages/1_02_01_01_02_01.gif" width="30" height="180" alt=""></td>
                        <td width="203" height="180"><marquee border="0" direction="up" height="148" onMouseOut="start()" onMouseOver="stop()"
                scrollamount="1" scrolldelay="50"><TABLE width="92%" height="100%" 
            border=0 align=center 
      cellPadding=0 cellSpacing=5>
                      <TBODY><TR><TD>  
             <jsp:useBean id="connDbBean2" scope="page" class="db.db"/>
            <%
			 String sqlxtgg="select * from dx where leibie='系统公告'";
			 ResultSet RS_resultxtgg=connDbBean2.executeQuery(sqlxtgg);
			 while(RS_resultxtgg.next()){
			 	out.print(RS_resultxtgg.getString("content"));
			 }
			%></TD></TR></TBODY></TABLE></marquee></td>
                        <td><img src="qtimages/1_02_01_01_02_03.gif" width="13" height="180" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_01_01_03.gif" width="246" height="13" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="246" height="80" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="246" height="36" background="qtimages/1_02_01_01_01.gif"><table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="68%" align="center" valign="bottom"><span class="STYLE1">用户登陆</span></td>
                        <td width="32%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="246"  border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="30" background="qtimages/1_02_01_01_02_01.gif">&nbsp;</td>
                          <td width="203" height="40">
                            
                            <br>
                            <%

	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
	{
	 %>
                            </A>
                            <table width="83%" height="15%" border="0" align="center" cellpadding="0" cellspacing="0">
                              <form name="formlog" method="post" action="userlog_post.jsp">
                                <tr>
                                  <td width="37%" height="30">用户名</td>
                                  <td width="63%" height="30"><input name="username" type="text" id="username" Style="border-right: #cadcb2 1px solid;
                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"></td>
                                </tr>
                                <tr>
                                  <td height="30">密码</td>
                                  <td height="30"><input name="pwd1" type="password" id="pwd1" Style="border-right: #cadcb2 1px solid;

                        border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"></td>
                                </tr>
                                <tr >
                                  <td height="30">权限</td>
                                  <td height="30">
                                  <select name="cx" id="cx" Style="border-right: #cadcb2 1px solid;
                        			 	border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                        				width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px">
                                      <option value="学生">学生</option>
                                      <option value="教师">教师</option>
                                  </select>
                                  </td>
                                </tr>
                                <tr>
                                  <td height="30">&nbsp;</td>
                                  <td height="30"><input type="submit" name="Submit" value="登陆" style=" height:19px; border:solid 1px #000000; color:#666666">
                                      <input type="reset" name="Submit2" value="重置" style=" height:19px; border:solid 1px #000000; color:#666666"></td>
                                </tr>
                              </form>
                            </table>
                            <%
					}
					else
					{
					%>
                            <table width="90%" height="82%" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="31%" height="30">用户名</td>
                                <td width="69%" height="30"><%=request.getSession().getAttribute("username")%></td>
                              </tr>
                              <tr>
                                <td height="30">权限</td>
                                <td height="30"><%=request.getSession().getAttribute("cx")%> </td>
                              </tr>
                              <tr>
                                <td height="30" colspan="2" align="center"><input type="button" name="Submit3" value="退出" onClick="javascript:location.href='logout.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                    <input type="button" name="Submit32" value="个人后台" onClick="javascript:location.href='main.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                </td>
                              </tr>
                            </table>
                            <%
					}
					%></td>
                          <td width="13" background="qtimages/1_02_01_01_02_03.gif">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_01_01_03.gif" width="246" height="13" alt=""></td>
                  </tr>
                </table></td>
              </tr>
			  
			   <tr>
                <td><table id="__01" width="246" height="100" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="246" height="36" background="qtimages/1_02_01_01_01.gif"><table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="68%" align="center" valign="bottom"><span class="STYLE1">站内搜索</span></td>
                        <td width="32%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="246"  border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="30" background="qtimages/1_02_01_01_02_01.gif">&nbsp;</td>
                          <td width="203" height="100"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                            <form action="news.jsp" method="post" name="formsearch" id="formsearch" >
                              <tr>
                                <td width="19%">标题</td>
                                <td width="81%"><input name="keyword" type="text" id="keyword" size="18" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                              </tr>
                              <tr>
                                <td>类别</td>
                                <td><select name="lb" style=" height:19px; border:solid 1px #000000; color:#666666">
                                    <option value="热门主题">热门主题</option>
                                  </select>
                                </td>
                              </tr>
                              <tr>
                                <td>&nbsp;</td>
                                <td><input type="submit" name="Submit4" value="提交" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                              </tr>
                            </form>
                          </table></td>
                          <td width="13" background="qtimages/1_02_01_01_02_03.gif">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_01_01_03.gif" width="246" height="13" alt=""></td>
                  </tr>
                </table></td>
              </tr>
			  
			  
              <tr>
                <td><table id="__01" width="246" height="229" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="246" height="36" background="qtimages/1_02_01_01_01.gif"><table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="68%" align="center" valign="bottom"><span class="STYLE1">友情连接</span></td>
                        <td width="32%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="246" height="180" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><img src="qtimages/1_02_01_01_02_01.gif" width="30" height="180" alt=""></td>
                          <td width="203" height="180"><table width="92%" border="0" align="center" cellpadding="0" cellspacing="0" class="newsline">
                            <%
        String sql2="";
  sql2="select * from youqinglianjie where 1=1 order by id desc limit 5";
  //sql2=sql2+" order by id desc";
 ResultSet RS_result2=connDbBean2.executeQuery(sql2);
 String wangzhanmingcheng="";String wangzhi="";
 //int i=0;
 while(RS_result2.next()){
 //i=i+1;
wangzhanmingcheng=RS_result2.getString("wangzhanmingcheng");wangzhi=RS_result2.getString("wangzhi");

         %>
                            <tr valign="middle">
                              <td width="9%" align="left" class="STYLE2"><img height="7" 
                                src="qtimages/1.gif" 
                                width="7" /></td>
                              <td width="16%" height="24" align="left"><a href="<%= wangzhi%>" class="b" target="_blank"><%= wangzhanmingcheng%></a></td>
                              <td width="75%" align="left"><a href="<%= wangzhi%>" class="b" target="_blank"><%= wangzhi%></a></td>
                            </tr>
                            <%} %>
                          </table></td>
                          <td><img src="qtimages/1_02_01_01_02_03.gif" width="13" height="180" alt=""></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_01_01_03.gif" width="246" height="13" alt=""></td>
                  </tr>
                </table></td>
              </tr>
            </table>