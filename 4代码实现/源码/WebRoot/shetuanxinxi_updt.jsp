<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
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
new CommDAO().update(request,response,"shetuanxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"shetuanxinxi"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="shetuanxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸�������Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>���ű�ţ�</td><td><input name='shetuanbianhao' type='text' id='shetuanbianhao' value='<%= mmm.get("shetuanbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�������ƣ�</td><td><input name='shetuanmingcheng' type='text' id='shetuanmingcheng' value='<%= mmm.get("shetuanmingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
	 <tr><td  width="200">����ʱ�䣺</td><td><input name='chenglishijian' type='text' id='chenglishijian' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelchenglishijian' /></td></tr>
		<tr><td  width="200">�������</td><td><input name='shetuanleibie' type='text' id='shetuanleibie' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshetuanleibie' /></td></tr>
		<tr><td  width="200">����ѧУ��</td><td><input name='suoshuxuexiao' type='text' id='suoshuxuexiao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelsuoshuxuexiao' /></td></tr>
		<tr><td  width="200">�������䣺</td><td><input name='shetuanyouxiang' type='text' id='shetuanyouxiang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshetuanyouxiang' /></td></tr>
		<tr><td  width="200">����qqȺ��</td><td><input name='shetuanqqqun' type='text' id='shetuanqqqun' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshetuanqqqun' /></td></tr>
     <tr><td>����ͼƬ��</td><td><input name='shetuantupian' type='text' id='shetuantupian' size='50' value='<%= mmm.get("shetuantupian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('shetuantupian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>�糤��</td><td><input name='shechang' type='text' id='shechang' value='<%= mmm.get("shechang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�ֻ���</td><td><input name='shouji' type='text' id='shouji' value='<%= mmm.get("shouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�������ã�</td><td><input name='baomingfeiyong' type='text' id='baomingfeiyong' value='<%= mmm.get("baomingfeiyong")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>���ż�飺</td><td><textarea name='shetuanjianjie' cols='50' rows='5' id='shetuanjianjie' style='border:solid 1px #000000; color:#666666'><%=mmm.get("shetuanjianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


