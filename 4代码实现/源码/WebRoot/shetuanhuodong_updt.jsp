<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���Ż</title>
	<link rel="stylesheet" href="kindeditor_a5/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor_a5/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor_a5/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor_a5/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor_a5/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="huodongjianjie"]', {
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
new CommDAO().update(request,response,"shetuanhuodong",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"shetuanhuodong"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="shetuanhuodong_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸����Ż:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���⣺</td><td><input name='biaoti' type='text' id='biaoti' size='50' value='<%=mmm.get("biaoti")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>���ڣ�</td><td><input name='riqi' type='text' id='riqi' value='<%= mmm.get("riqi")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>�����ˣ�</td><td><input name='faburen' type='text' id='faburen' value='<%= mmm.get("faburen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���飺</td><td><textarea name="huodongjianjie" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"><%=mmm.get("huodongjianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


