
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
    
    <title>选择题</title><script language="javascript" src="js/Calendar.js"></script>
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
	if(document.form1.zhuanye.value==""){alert("请输入专业");document.form1.zhuanye.focus();return false;}if(document.form1.xueke.value==""){alert("请输入学科");document.form1.xueke.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="panduan_updt_post.jsp?id=<%=id %>">
  <input type="hidden" name="questtype" value="judge"/>
  修改选择题:
  <br><br>
  <%
  String sql="select * from xuanzeti where id="+id;
  String zhuanye="";
  String xueke="";
  String timu="";
  String xuanxiangA="";
  String xuanxiangB="";
  String xuanxiangC="";
  String xuanxiangD="";
  String daan="";
  String nanduxishu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  	zhuanye=RS_result.getString("zhuanye");
  	xueke=RS_result.getString("xueke");
  	timu=RS_result.getString("timu");
  	xuanxiangA=RS_result.getString("xuanxiangA");
  	xuanxiangB=RS_result.getString("xuanxiangB");
  	xuanxiangC=RS_result.getString("xuanxiangC");
  	xuanxiangD=RS_result.getString("xuanxiangD");
  	daan=RS_result.getString("daan");
  	nanduxishu=RS_result.getString("nanduxishu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>专业：</td><td><select name='zhuanye' id='zhuanye'><%sql="select zhuanye from zhuanyexinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("zhuanye")%>" ><%=RS_result.getString("zhuanye")%></option><%}%></select></td></tr><script language="javascript">document.form1.zhuanye.value='<%=zhuanye%>';</script><tr><td>学科：</td><td><select name='xueke' id='xueke'>
       <%sql="select kechengmingcheng from kechengxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%>
       <option value="<%= RS_result.getString("kechengmingcheng")%>" ><%=RS_result.getString("kechengmingcheng")%></option>
       <%}%>
     </select>
     </td>
     </tr>
     <script language="javascript">document.form1.xueke.value='<%=xueke%>';</script>
     <tr>
	     <td>题目：</td>
	     <td><textarea name='timu' cols='50' rows='5' id='timu'><%=timu%></textarea>
	     </td>
     </tr>
     <tr>
     <td>答案：</td>
     <td>
     <select name='daan' id='daan'>
       <option value="1">正确</option>
	   <option value="0">错误</option>
     </select>
     </td></tr><script language="javascript">document.form1.daan.value='<%=daan%>';</script>
     <tr><td>难度系数：</td><td>
     <select name='nanduxishu' id='nanduxishu'>
       <option value="难">难</option>
       <option value="中">中</option>
       <option value="易">易</option>
     </select></td>
     </tr>
     <script language="javascript">document.form1.nanduxishu.value='<%=nanduxishu%>';</script>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


