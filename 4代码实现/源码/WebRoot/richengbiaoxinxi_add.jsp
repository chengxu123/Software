<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�ճ̱���Ϣ</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="richengbiaoxinxi_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){






}
new CommDAO().insert(request,response,"richengbiaoxinxi",ext,true,false,""); 
%>

  <body >
 <form  action="richengbiaoxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ����ճ̱���Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td>ѧ�ڣ�</td><td><select name='xueqi' id='xueqi'><option value="һѧ��">һѧ��</option><option value="��ѧ��">��ѧ��</option></select>&nbsp;*<label id='clabelxueqi' /></td></tr>		<tr><td  width="200">�ճ̱�</td><td><input name='richengbiao' type='text' id='richengbiao' size='50' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('richengbiao')" style='border:solid 1px #000000; color:#666666'/>&nbsp;*<label id='clabelrichengbiao' /></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var xueqiobj = document.getElementById("xueqi"); if(xueqiobj.value==""){document.getElementById("clabelxueqi").innerHTML="&nbsp;&nbsp;<font color=red>������ѧ��</font>";return false;}else{document.getElementById("clabelxueqi").innerHTML="  "; } 	var richengbiaoobj = document.getElementById("richengbiao"); if(richengbiaoobj.value==""){document.getElementById("clabelrichengbiao").innerHTML="&nbsp;&nbsp;<font color=red>�������ճ̱�</font>";return false;}else{document.getElementById("clabelrichengbiao").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  


