
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
    
    <title>判断题</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
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
  </head>
<script language="javascript">
function check()
{
	if(document.form1.zhuanye.value==""){alert("请输入专业");document.form1.zhuanye.focus();return false;}if(document.form1.xueke.value==""){alert("请输入学科");document.form1.xueke.focus();return false;}
}
function gow()
{
	document.location.href="xuanzeti_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="panduan_add_post.jsp">
  	<input type="hidden" name="questtype" value="judge"/>
  添加判断题:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    
   	 <tr>
   	 	<td>专业：</td>
   	 	<td>
   	 		<select name='zhuanye' id='zhuanye'><%String sql="select zhuanye from zhuanyexinxi order by id desc";ResultSet RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("zhuanye")%>" ><%=RS_result.getString("zhuanye")%></option><%}%></select>&nbsp;*
   	 	</td>
   	 </tr>
   	 <tr>
     	<td>课程：</td>
     	<td>
     		<select name='xueke' id='xueke'>
     			<%sql="select kechengmingcheng from kechengxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%>
     			<option value="<%= RS_result.getString("kechengmingcheng")%>" >
     			<%=RS_result.getString("kechengmingcheng")%></option><%}%>
     		</select>&nbsp;*</td>
     </tr>
     <tr>
     	<td>题目：</td>
     	<td><textarea name='timu' cols='50' rows='5' id='timu'></textarea></td>
     </tr>
     <tr>
     	<td>答案：</td>
     	<td>
     		<select name='daan' id='daan'>
			     <option value="1">正确</option>
			     <option value="0">错误</option>
   			</select>
   		</td>
   	 </tr><tr><td>难度系数：</td><td><select name='nanduxishu' id='nanduxishu'>
     <option value="难">难</option>
     <option value="中">中</option>
     <option value="易">易</option>
   </select></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

