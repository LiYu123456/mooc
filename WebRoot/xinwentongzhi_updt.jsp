
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
    
    <title>新闻通知</title><script language="javascript" src="js/Calendar.js"></script>
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
function check()
{
	if(document.form1.biaoti.value==""){alert("请输入标题");document.form1.biaoti.focus();return false;}if(document.form1.leibie.value==""){alert("请输入类别");document.form1.leibie.focus();return false;}if(document.form1.tianjiaren.value==""){alert("请输入添加人");document.form1.tianjiaren.focus();return false;}if(document.form1.dianjilv.value==""){alert("请输入点击率");document.form1.dianjilv.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="xinwentongzhi_updt_post.jsp?id=<%=id %>">
  修改新闻通知:
  <br><br>
  <%
  String sql="select * from xinwentongzhi where id="+id;
  String biaoti="";String leibie="";String neirong="";String tianjiaren="";String shouyetupian="";String dianjilv="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  biaoti=RS_result.getString("biaoti");leibie=RS_result.getString("leibie");neirong=RS_result.getString("neirong");tianjiaren=RS_result.getString("tianjiaren");shouyetupian=RS_result.getString("shouyetupian");dianjilv=RS_result.getString("dianjilv");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr>
     	<td>标题：</td>
     	<td>
     		<input name='biaoti' type='text' id='biaoti' size='50' value='<%=biaoti%>' />
     	</td>
     </tr>
     <tr>
     	<td>类别：</td>
     	<td>
     		<input name='leibie' type='text' id='leibie' value='<%= leibie%>' />
     	</td>
     </tr>
     <tr>
     	<td>内容：</td>
     	<td>
     		<textarea name="neirong" id="neirong" style="display:none"><%=neirong%></textarea>
     		<!-- 
     		<iframe ID="eWebEditor1" src="eWebEditor_V4.60/ewebeditor.htm?id=neirong&style=coolblue" frameborder="0" scrolling="no" width="600" HEIGHT="350"></iframe>
     		 -->
     		 <iframe ID="eWebEditor1" src="./ewebeditor/ewebeditor.htm?id=neirong" frameborder="0" scrolling="no" width="900" HEIGHT="350"></iframe>
     	</td>
     </tr>
     <tr>
     	<td>添加人：</td>
     	<td>
     		<input name='tianjiaren' type='text' id='tianjiaren' value='<%= tianjiaren%>' />
     	</td>
     </tr>
     <tr>
     	<td>首页图片：</td>
     	<td>
     		<input name='shouyetupian' type='text' id='shouyetupian' size='50' value='<%= shouyetupian%>' />&nbsp;
     		<input type='button' value='上传' onClick="up('shouyetupian')"/>
     	</td>
     </tr>
     <tr>
     	<td>点击率：</td>
     	<td>
     		<input name='dianjilv' type='text' id='dianjilv' value='<%= dianjilv%>' />
     	</td>
     </tr>
     <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


