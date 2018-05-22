<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>学习视频</title>
    <LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script type="text/javascript">
	    function up(tt){
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
	</script>
  </head>
<script language="javascript">
function check(){
	if(document.form1.bianhao.value==""){
		alert("请输入编号");document.form1.bianhao.focus();return false;
	}
	if(document.form1.mingcheng.value==""){
		alert("请输入名称");document.form1.mingcheng.focus();
		return false;
	}
	if(document.form1.wenjian.value==""){
		alert("请输入文件");document.form1.wenjian.focus();return false;
	}
}
function gow(){
	document.location.href="xuexishipin_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
<body>
	<form name="form1" id="form1" method="post" action="xuexishipin_add_post.jsp">
		添加学习视频:
		<br><br>
		<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    
			<tr>
				<td>编号：</td>
				<td>
					<input name='bianhao' type='text' id='bianhao' value='' />&nbsp;*
				</td>
			</tr>
			<tr>
				<td>名称：</td>
				<td>
					<input name='mingcheng' type='text' id='mingcheng' value='' size='50' />&nbsp;*
				</td>
			</tr>
			<tr>
				<td>课程：</td>
				<td>	
					<select name='kecheng' id='kecheng'>
					<%String sql="select kechengmingcheng from kechengxinxi order by id desc";ResultSet RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%>
						<option value="<%= RS_result.getString("kechengmingcheng")%>" >
					<%=RS_result.getString("kechengmingcheng")%></option><%}%>
					</select>
				</td>
			</tr>
			<tr>
				<td>主讲人：</td>
				<td>
					<input name='zhujiangren' type='text' id='zhujiangren' value='' />
				</td>
			</tr>
			<tr>
				<td>内容：</td>
				<td>
					<textarea name="neirong" style="width: 100%;height: 100px;"></textarea>
				</td>
			</tr>
			<tr>
				<td>文件：</td>
				<td>
					<input name='wenjian' type='text' id='wenjian' size='50' value='' />&nbsp;
					<input type='button' value='上传' onClick="up('wenjian')"/>&nbsp;*
				</td>
			</tr>
		    <tr>
		      <td>&nbsp;</td>
		      <td>
		      	<input type="submit" name="Submit" value="提交" onclick="return check();" />
		      	<input type="reset" name="Submit2" value="重置" /></td>
		    </tr>
		</table>
	</form>
</body>
</html>

