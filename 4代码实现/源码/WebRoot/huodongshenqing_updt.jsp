<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�����</title>
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
new CommDAO().update(request,response,"huodongshenqing",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"huodongshenqing"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="huodongshenqing_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸Ļ����:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>���ű�ţ�</td><td><input name='shetuanbianhao' type='text' id='shetuanbianhao' value='<%= mmm.get("shetuanbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�������ƣ�</td><td><input name='shetuanmingcheng' type='text' id='shetuanmingcheng' value='<%= mmm.get("shetuanmingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���ƣ�</td><td><input name='mingcheng' type='text' id='mingcheng' size='50' value='<%=mmm.get("mingcheng")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>����ͣ�</td><td><select name='huodongleixing' id='huodongleixing'><option value="����">����</option><option value="����">����</option></select></td></tr><script language="javascript">document.form1.huodongleixing.value='<%=mmm.get("huodongleixing")%>';</script>     <tr><td>���أ�</td><td><input name='changdi' type='text' id='changdi' size='50' value='<%=mmm.get("changdi")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>�ʱ�䣺</td><td><input name='huodongshijian' type='text' id='huodongshijian' value='<%= mmm.get("huodongshijian")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>���飺</td><td><textarea name='huodongjianjie' cols='50' rows='5' id='huodongjianjie' style='border:solid 1px #000000; color:#666666'><%=mmm.get("huodongjianjie")%></textarea></td></tr>     <tr><td>�����ˣ�</td><td><input name='shenqingren' type='text' id='shenqingren' value='<%= mmm.get("shenqingren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


