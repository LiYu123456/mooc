
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
    
    <title>用户注册</title><script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
	</script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="selectQueType_updt_post.jsp?id=<%=id %>">
  修改用户注册:
  <br><br>
  <%
  String[] selectedTypeArray=new String[1];
  String sql="select * from yonghuzhuce where id="+id;
  String yonghuming="";String mima="";String xingming="";
  String xingbie="";String chushengnianyue="";String QQ="";
  String youxiang="";String dianhua="";String shenfenzheng="";
  String touxiang="";String dizhi="";String beizhu="";
  String selectQueType="";
  
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  	yonghuming=RS_result.getString("yonghuming");
  	mima=RS_result.getString("mima");
  	xingming=RS_result.getString("xingming");
  	xingbie=RS_result.getString("xingbie");
  	chushengnianyue=RS_result.getString("chushengnianyue");
  	QQ=RS_result.getString("QQ");
  	youxiang=RS_result.getString("youxiang");
  	dianhua=RS_result.getString("dianhua");
  	shenfenzheng=RS_result.getString("shenfenzheng");
  	touxiang=RS_result.getString("touxiang");
  	dizhi=RS_result.getString("dizhi");
  	beizhu=RS_result.getString("beizhu");
  	
  	selectQueType=RS_result.getString("selectQueType");
  }
  if(selectQueType!=null&&!"".equals(selectQueType)){
	  selectedTypeArray=selectQueType.split(",");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr>
     	<td>用户名：</td>
     	<td><input name='yonghuming' type='text' id='yonghuming' value='<%= yonghuming%>' readonly="readonly"/></td>
     </tr>
     <tr>
     	<td>姓名：</td>
     	<td>
     		<input name='xingming' type='text' id='xingming' value='<%= xingming%>' readonly="readonly"/>
     	</td>
     </tr>
     <tr>
     	<td>题型授权：</td>
     	<td>
     		<input type="checkbox" name="selectedQueType" id="choice" value="choice"
     		<% 
     			for(String str:selectedTypeArray){
     				if("choice".equals(str)){
     		%> 
     			       checked="checked"
     		<%
     					break;
     				}
     			}
     		%>
     		/>
     		<label for="choice">选择题</label>
     		&nbsp;&nbsp;&nbsp;&nbsp;
     		<input type="checkbox" name="selectedQueType" id="judge" value="judge"
     		<% 
     			for(String str:selectedTypeArray){
     				if("judge".equals(str)){
     		%> 
     			       checked="checked"
     		<%
     					break;
     				}
     			}
     		%>
     		/>
     		<label for="judge">判断题</label>
     	</td>
     </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


