<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>聚餐</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"jucan",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"jucan"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="jucan_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改聚餐:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>活动标题：</td><td><input name='huodongbiaoti' type='text' id='huodongbiaoti' size='50' value='<%=mmm.get("huodongbiaoti")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>活动日期：</td><td><input name='huodongriqi' type='text' id='huodongriqi' value='<%= mmm.get("huodongriqi")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>用户名：</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= mmm.get("yonghuming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>聚餐介绍：</td><td><textarea name='jucanjieshao' cols='50' rows='5' id='jucanjieshao' style='border:solid 1px #000000; color:#666666'><%=mmm.get("jucanjieshao")%></textarea></td></tr>     <tr><td>举办人：</td><td><input name='jubanren' type='text' id='jubanren' value='<%= mmm.get("jubanren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


