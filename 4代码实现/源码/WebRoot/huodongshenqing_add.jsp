<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�����</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"shetuanxinxi");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("shenqingren",(String)request.getSession().getAttribute("username"),"shetuanxinxi");
  String shetuanbianhao="";
  	String shetuanmingcheng="";
  	String mingcheng="";
  	
  shetuanbianhao=(String)mlbdq.get("shetuanbianhao");
  	shetuanmingcheng=(String)mlbdq.get("shetuanmingcheng");
  	mingcheng=(String)mlbdq.get("mingcheng");
  	

   %>
<script language="javascript">

function gow()
{
	document.location.href="huodongshenqing_add.jsp?id=<%=id%>";
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
new CommDAO().insert(request,response,"huodongshenqing",ext,true,false,""); 
%>

  <body >
 <form  action="huodongshenqing_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��ӻ����:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">���ű�ţ�</td><td><input name='shetuanbianhao' type='text' id='shetuanbianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelshetuanbianhao' /></td></tr><script language="javascript">document.form1.shetuanbianhao.value='<%=shetuanbianhao%>';</script>
		<tr><td  width="200">�������ƣ�</td><td><input name='shetuanmingcheng' type='text' id='shetuanmingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelshetuanmingcheng' /></td></tr><script language="javascript">document.form1.shetuanmingcheng.value='<%=shetuanmingcheng%>';</script>
		<tr><td  width="200">���ƣ�</td><td><input name='mingcheng' type='text' id='mingcheng' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.mingcheng.value='<%=mingcheng%>';</script>
		<tr><td>����ͣ�</td><td><select name='huodongleixing' id='huodongleixing'><option value="����">����</option><option value="����">����</option></select></td></tr>
		<tr><td  width="200">���أ�</td><td><input name='changdi' type='text' id='changdi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td width="200">�ʱ�䣺</td><td><input name='huodongshijian' type='text' id='huodongshijian' value='' onblur='checkform()' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/>&nbsp;*<label id='clabelhuodongshijian' /></td></tr>
		<tr><td  width="200">���飺</td><td><textarea name='huodongjianjie' cols='50' rows='5' id='huodongjianjie' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		<tr><td  width="200">�����ˣ�</td><td><input name='shenqingren' type='text' id='shenqingren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		
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
 
	var shetuanbianhaoobj = document.getElementById("shetuanbianhao"); if(shetuanbianhaoobj.value==""){document.getElementById("clabelshetuanbianhao").innerHTML="&nbsp;&nbsp;<font color=red>���������ű��</font>";return false;}else{document.getElementById("clabelshetuanbianhao").innerHTML="  "; } 
	var shetuanbianhaoobj = document.getElementById("shetuanbianhao");  
if(shetuanbianhaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=huodongshenqing&col=shetuanbianhao&value="+shetuanbianhaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelshetuanbianhao").innerHTML="&nbsp;&nbsp;<font color=red>���ű���Ѵ���</font>";  
return false;
}else{document.getElementById("clabelshetuanbianhao").innerHTML="  ";  
}  
} 
	var shetuanmingchengobj = document.getElementById("shetuanmingcheng"); if(shetuanmingchengobj.value==""){document.getElementById("clabelshetuanmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>��������������</font>";return false;}else{document.getElementById("clabelshetuanmingcheng").innerHTML="  "; } 
	var huodongshijianobj = document.getElementById("huodongshijian"); if(huodongshijianobj.value==""){document.getElementById("clabelhuodongshijian").innerHTML="&nbsp;&nbsp;<font color=red>������ʱ��</font>";return false;}else{document.getElementById("clabelhuodongshijian").innerHTML="  "; } 
	var huodongshijianobj = document.getElementById("huodongshijian");  
if(huodongshijianobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=huodongshenqing&col=huodongshijian&value="+huodongshijianobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelhuodongshijian").innerHTML="&nbsp;&nbsp;<font color=red>�ʱ���Ѵ���</font>";  
return false;
}else{document.getElementById("clabelhuodongshijian").innerHTML="  ";  
}  
} 
	


return true;   
}   
popheight=450;
</script>  


