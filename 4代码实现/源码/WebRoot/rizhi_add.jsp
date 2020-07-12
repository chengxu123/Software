<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>日志</title>
	<link rel="stylesheet" href="kindeditor_a5/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor_a5/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor_a5/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor_a5/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor_a5/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="rizhineirong"]', {
				cssPath : 'kindeditor_a5/plugins/code/prettify.css',
				uploadJson : 'kindeditor_a5/jsp/upload_json.jsp',
				fileManagerJson : 'kindeditor_a5/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
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
	document.location.href="rizhi_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){






}
new CommDAO().insert(request,response,"rizhi",ext,true,false,""); 
%>

  <body >
 <form  action="rizhi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加日志:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">日志标题：</td><td><input name='rizhibiaoti' type='text' id='rizhibiaoti' value='' onblur='checkform()' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelrizhibiaoti' /></td></tr>
		<tr><td  width="200">发表时间：</td><td><input name='fabiaoshijian' type='text' id='fabiaoshijian' value='' onblur='checkform()' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd HH:mm:ss'})" style='width:120px; height:16px; border:solid 1px #000000; color:#666666'/>&nbsp;*<label id='clabelfabiaoshijian' /></td></tr>
		<tr><td  width="200">日志内容：</td><td><textarea name="rizhineirong" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"></textarea></td></tr>
		<tr><td  width="200">发表人：</td><td><input name='fabiaoren' type='text' id='fabiaoren' value='<%=request.getSession().getAttribute("username")%>'onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelfabiaoren' /></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
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
 
	var rizhibiaotiobj = document.getElementById("rizhibiaoti"); if(rizhibiaotiobj.value==""){document.getElementById("clabelrizhibiaoti").innerHTML="&nbsp;&nbsp;<font color=red>请输入日志标题</font>";return false;}else{document.getElementById("clabelrizhibiaoti").innerHTML="  "; } 
	var fabiaoshijianobj = document.getElementById("fabiaoshijian"); if(fabiaoshijianobj.value==""){document.getElementById("clabelfabiaoshijian").innerHTML="&nbsp;&nbsp;<font color=red>请输入发表时间</font>";return false;}else{document.getElementById("clabelfabiaoshijian").innerHTML="  "; } 
	var fabiaorenobj = document.getElementById("fabiaoren"); if(fabiaorenobj.value==""){document.getElementById("clabelfabiaoren").innerHTML="&nbsp;&nbsp;<font color=red>请输入发表人</font>";return false;}else{document.getElementById("clabelfabiaoren").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


