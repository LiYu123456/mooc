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
    <title>dx</title>
  </head>
  <script type="text/javascript">
  	function check(){
  		if(document.form1.content.value==""){
  			alert("请输入内容");
  			document.form1.content.focus();
  			return false;
  		}
  	}
  </script>
<body>
<%
	String lb=new String(request.getParameter("lb").getBytes("ISO-8859-1"),"UTF-8");
%>
  <form name="form1" id="form1" method="post" action="dx_post.jsp?lb=<%=lb %>">
	编辑<%=lb%>:
    <br><br>
<%
	String sql="select * from dx where leibie='"+lb+"'";
	String contdent="";
	ResultSet RS_result=connDbBean.executeQuery(sql);
	while(RS_result.next()){
		contdent=RS_result.getString("content");
	}
%>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr>
     	<td>内容：</td>
     	<td>
     		<textarea type="hidden" name="content" id="content1" style="display:none"><%=contdent %></textarea>
			<!-- 
			<iframe ID="eWebEditor1" src="./eWebEditor_V4.60/ewebeditor.htm?id=content1&style=coolblue" frameborder="0" scrolling="no" width="900" HEIGHT="350"></iframe>
			 -->
			 <iframe ID="eWebEditor1" src="./ewebeditor/ewebeditor.htm?id=content1" frameborder="0" scrolling="no" width="900" HEIGHT="350"></iframe>
			<input name="lb" type="hidden" id="lb" value="<%=lb%>"/>
		</td>
	</tr>
    <tr>
      <td>&nbsp;</td>
      <td>
	      <input type="submit" name="Submit" value="确定编辑" onClick="return check();" />
	      <input type="reset" name="Submit2" value="重置" />
      </td>
    </tr>
  </table>
</form>
</body>
</html>


