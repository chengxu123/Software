<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�۲�</title>
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
  �޸ľ۲�:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>����⣺</td><td><input name='huodongbiaoti' type='text' id='huodongbiaoti' size='50' value='<%=mmm.get("huodongbiaoti")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>����ڣ�</td><td><input name='huodongriqi' type='text' id='huodongriqi' value='<%= mmm.get("huodongriqi")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>�û�����</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= mmm.get("yonghuming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�۲ͽ��ܣ�</td><td><textarea name='jucanjieshao' cols='50' rows='5' id='jucanjieshao' style='border:solid 1px #000000; color:#666666'><%=mmm.get("jucanjieshao")%></textarea></td></tr>     <tr><td>�ٰ��ˣ�</td><td><input name='jubanren' type='text' id='jubanren' value='<%= mmm.get("jubanren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


