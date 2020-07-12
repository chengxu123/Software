<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>聚餐</title>
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
	document.location.href="jucan_add.jsp?id=<%=id%>&yonghuming="+document.form1.yonghuming.value;
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
//youshenhe
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"jucan",ext,true,false,""); 
%>

  <body >
 <form  action="jucan_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加聚餐:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">活动标题：</td><td><input name='huodongbiaoti' type='text' id='huodongbiaoti' value='' onblur='checkform()' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelhuodongbiaoti' /></td></tr>		<tr><td width="200">活动日期：</td><td><input name='huodongriqi' type='text' id='huodongriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>		<tr><td>用户名：</td><td><%=Info.getselectsl("yonghuming","chengyuanxinxi","yonghuming")%>&nbsp;*<label id='clabelyonghuming' /></td></tr>		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' style='border:solid 1px #000000; color:#666666' >&nbsp;*<label id='clabelxingming' /></td></tr>		<tr><td  width="200">聚餐介绍：</td><td><textarea name='jucanjieshao' cols='50' rows='5' id='jucanjieshao' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		<tr><td  width="200">举办人：</td><td><input name='jubanren' type='text' id='jubanren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%
if(request.getParameter("yonghuming")==null || request.getParameter("yonghuming").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("yonghuming",request.getParameter("yonghuming"),"chengyuanxinxi"); 
%>
<script language="javascript">
document.form1.yonghuming.value="<%=mmm.get("yonghuming")%>";document.form1.xingming.value="<%=mmm.get("xingming")%>";//suilafuzhi

</script>
<%
}
%><!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var huodongbiaotiobj = document.getElementById("huodongbiaoti"); if(huodongbiaotiobj.value==""){document.getElementById("clabelhuodongbiaoti").innerHTML="&nbsp;&nbsp;<font color=red>请输入活动标题</font>";return false;}else{document.getElementById("clabelhuodongbiaoti").innerHTML="  "; } 	var huodongbiaotiobj = document.getElementById("huodongbiaoti");  
if(huodongbiaotiobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=jucan&col=huodongbiaoti&value="+huodongbiaotiobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelhuodongbiaoti").innerHTML="&nbsp;&nbsp;<font color=red>活动标题已存在</font>";  
return false;
}else{document.getElementById("clabelhuodongbiaoti").innerHTML="  ";  
}  
} 	var yonghumingobj = document.getElementById("yonghuming"); if(yonghumingobj.value==""){document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>请输入用户名</font>";return false;}else{document.getElementById("clabelyonghuming").innerHTML="  "; } 	var xingmingobj = document.getElementById("xingming"); if(xingmingobj.value==""){document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";return false;}else{document.getElementById("clabelxingming").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  


