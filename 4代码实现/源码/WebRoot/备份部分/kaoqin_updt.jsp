<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>����</title>
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
new CommDAO().update(request,response,"kaoqin",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"kaoqin"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="kaoqin_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸Ŀ���:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>���ű�ţ�</td><td><input name='shetuanbianhao' type='text' id='shetuanbianhao' value='<%= mmm.get("shetuanbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�������ƣ�</td><td><input name='shetuanmingcheng' type='text' id='shetuanmingcheng' value='<%= mmm.get("shetuanmingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�������ڣ�</td><td><input name='kaoqinriqi' type='text' id='kaoqinriqi' value='<%= mmm.get("kaoqinriqi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>����״̬��</td><td><select name='kaoqinzhuangtai' id='kaoqinzhuangtai'><option value="����">����</option><option value="���">���</option></select></td></tr><script language="javascript">document.form1.kaoqinzhuangtai.value='<%=mmm.get("kaoqinzhuangtai")%>';</script>     <tr><td>���ڳ�Ա��</td><td><input name='kaoqinchengyuan' type='text' id='kaoqinchengyuan' value='<%= mmm.get("kaoqinchengyuan")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


