<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>社团信息</title>
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
	document.location.href="shetuanxinxi_add.jsp?id=<%=id%>";
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
new CommDAO().insert(request,response,"shetuanxinxi",ext,true,false,""); 
%>

  <body >
 <form  action="shetuanxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加社团信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">社团编号：</td><td><input name='shetuanbianhao' type='text' id='shetuanbianhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">社团名称：</td><td><input name='shetuanmingcheng' type='text' id='shetuanmingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshetuanmingcheng' /></td></tr>
		<tr><td  width="200">成立时间：</td><td><input name='chenglishijian' type='text' id='chenglishijian' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelchenglishijian' /></td></tr>
		<tr><td  width="200">社团类别：</td><td><input name='shetuanleibie' type='text' id='shetuanleibie' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshetuanleibie' /></td></tr>
		<tr><td  width="200">所属学校：</td><td><input name='suoshuxuexiao' type='text' id='suoshuxuexiao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelsuoshuxuexiao' /></td></tr>
		<tr><td  width="200">社团邮箱：</td><td><input name='shetuanyouxiang' type='text' id='shetuanyouxiang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshetuanyouxiang' /></td></tr>
		<tr><td  width="200">社团qq群：</td><td><input name='shetuanqqqun' type='text' id='shetuanqqqun' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshetuanqqqun' /></td></tr>
		<tr><td  width="200">社团图片：</td><td><input name='shetuantupian' type='text' id='shetuantupian' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('shetuantupian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">社长：</td><td><input name='shechang' type='text' id='shechang' onblur='checkform()' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" />&nbsp;*<label id='clabelshechang' /></td></tr>
		<tr><td  width="200">手机：</td><td><input name='shouji' type='text' id='shouji' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">报名费用：</td><td><input name='baomingfeiyong' type='text' id='baomingfeiyong' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelbaomingfeiyong' />必需数字型</td></tr>
		<tr><td  width="200">社团简介：</td><td><textarea name='shetuanjianjie' cols='50' rows='5' id='shetuanjianjie' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
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
 
	var shetuanmingchengobj = document.getElementById("shetuanmingcheng"); if(shetuanmingchengobj.value==""){document.getElementById("clabelshetuanmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入社团名称</font>";return false;}else{document.getElementById("clabelshetuanmingcheng").innerHTML="  "; } 
	var shechangobj = document.getElementById("shechang"); if(shechangobj.value==""){document.getElementById("clabelshechang").innerHTML="&nbsp;&nbsp;<font color=red>请输入社长</font>";return false;}else{document.getElementById("clabelshechang").innerHTML="  "; } 
	var baomingfeiyongobj = document.getElementById("baomingfeiyong"); if(baomingfeiyongobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(baomingfeiyongobj.value)){document.getElementById("clabelbaomingfeiyong").innerHTML=""; }else{document.getElementById("clabelbaomingfeiyong").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


