<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�������</title>
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
new CommDAO().update(request,response,"caiwuguanli",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"caiwuguanli"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="caiwuguanli_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸Ĳ������:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���⣺</td><td><input name='biaoti' type='text' id='biaoti' value='<%= mmm.get("biaoti")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���ʣ�</td><td><select name='xingzhi' id='xingzhi'><option value="����">����</option><option value="֧��">֧��</option></select></td></tr><script language="javascript">document.form1.xingzhi.value='<%=mmm.get("xingzhi")%>';</script>     <tr><td>��</td><td><input name='jine' type='text' id='jine' value='<%= mmm.get("jine")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���ڣ�</td><td><input name='riqi' type='text' id='riqi' value='<%= mmm.get("riqi")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>�����ˣ�</td><td><input name='jingshouren' type='text' id='jingshouren' value='<%= mmm.get("jingshouren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>��ػ��</td><td><input name='xiangguanhuodong' type='text' id='xiangguanhuodong' size='50' value='<%=mmm.get("xiangguanhuodong")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


