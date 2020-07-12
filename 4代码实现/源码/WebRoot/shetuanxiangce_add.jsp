<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>社团相册</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="shetuanxiangce_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
ext.put("issh","否");
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"shetuanxiangce",ext,true,false,""); 
%>

  <body >
 <form  action="shetuanxiangce_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加社团相册:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">照片编号：</td><td><input name='zhaopianbianhao' type='text' id='zhaopianbianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelzhaopianbianhao' /></td></tr>		<tr><td  width="200">标题：</td><td><input name='biaoti' type='text' id='biaoti' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelbiaoti' /></td></tr>		<tr><td  width="200">图片：</td><td><input name='tupian' type='text' id='tupian' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('tupian')" style='border:solid 1px #000000; color:#666666'/></td></tr>		<tr><td  width="200">介绍：</td><td><textarea name='jieshao' cols='50' rows='5' id='jieshao' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		<tr><td  width="200">发布人：</td><td><input name='faburen' type='text' id='faburen' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
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
 
	var zhaopianbianhaoobj = document.getElementById("zhaopianbianhao"); if(zhaopianbianhaoobj.value==""){document.getElementById("clabelzhaopianbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入照片编号</font>";return false;}else{document.getElementById("clabelzhaopianbianhao").innerHTML="  "; } 	var zhaopianbianhaoobj = document.getElementById("zhaopianbianhao");  
if(zhaopianbianhaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=shetuanxiangce&col=zhaopianbianhao&value="+zhaopianbianhaoobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelzhaopianbianhao").innerHTML="&nbsp;&nbsp;<font color=red>照片编号已存在</font>";  
return false;
}else{document.getElementById("clabelzhaopianbianhao").innerHTML="  ";  
}  
} 	var biaotiobj = document.getElementById("biaoti"); if(biaotiobj.value==""){document.getElementById("clabelbiaoti").innerHTML="&nbsp;&nbsp;<font color=red>请输入标题</font>";return false;}else{document.getElementById("clabelbiaoti").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  


