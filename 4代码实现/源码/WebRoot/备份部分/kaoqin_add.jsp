<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>����</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"chengyuanxinxi");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("kaoqinchengyuan",(String)request.getSession().getAttribute("username"),"chengyuanxinxi");
  String shetuanbianhao="";  	String shetuanmingcheng="";  	
  shetuanbianhao=(String)mlbdq.get("shetuanbianhao");  	shetuanmingcheng=(String)mlbdq.get("shetuanmingcheng");  	

   %>
<script language="javascript">

function gow()
{
	document.location.href="kaoqin_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
ext.put("issh","��");
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"kaoqin",ext,true,false,""); 
%>

  <body >
 <form  action="kaoqin_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��ӿ���:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">���ű�ţ�</td><td><input name='shetuanbianhao' type='text' id='shetuanbianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelshetuanbianhao' /></td></tr><script language="javascript">document.form1.shetuanbianhao.value='<%=shetuanbianhao%>';</script>		<tr><td  width="200">�������ƣ�</td><td><input name='shetuanmingcheng' type='text' id='shetuanmingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelshetuanmingcheng' /></td></tr><script language="javascript">document.form1.shetuanmingcheng.value='<%=shetuanmingcheng%>';</script>		<tr><td  width="200">�������ڣ�</td><td><input name='kaoqinriqi' type='text' id='kaoqinriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd HH:mm:ss'})" style='width:120px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>		<tr><td>����״̬��</td><td><select name='kaoqinzhuangtai' id='kaoqinzhuangtai'><option value="����">����</option><option value="���">���</option></select>&nbsp;*<label id='clabelkaoqinzhuangtai' /></td></tr>		<tr><td  width="200">���ڳ�Ա��</td><td><input name='kaoqinchengyuan' type='text' id='kaoqinchengyuan' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		<tr><td  width="200">��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var shetuanbianhaoobj = document.getElementById("shetuanbianhao"); if(shetuanbianhaoobj.value==""){document.getElementById("clabelshetuanbianhao").innerHTML="&nbsp;&nbsp;<font color=red>���������ű��</font>";return false;}else{document.getElementById("clabelshetuanbianhao").innerHTML="  "; } 	var shetuanmingchengobj = document.getElementById("shetuanmingcheng"); if(shetuanmingchengobj.value==""){document.getElementById("clabelshetuanmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>��������������</font>";return false;}else{document.getElementById("clabelshetuanmingcheng").innerHTML="  "; } 	var kaoqinzhuangtaiobj = document.getElementById("kaoqinzhuangtai"); if(kaoqinzhuangtaiobj.value==""){document.getElementById("clabelkaoqinzhuangtai").innerHTML="&nbsp;&nbsp;<font color=red>�����뿼��״̬</font>";return false;}else{document.getElementById("clabelkaoqinzhuangtai").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  


