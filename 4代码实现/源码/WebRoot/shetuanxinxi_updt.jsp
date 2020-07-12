<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>社团信息</title>
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
  修改社团信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>社团编号：</td><td><input name='shetuanbianhao' type='text' id='shetuanbianhao' value='<%= mmm.get("shetuanbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>社团名称：</td><td><input name='shetuanmingcheng' type='text' id='shetuanmingcheng' value='<%= mmm.get("shetuanmingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
	 <tr><td  width="200">成立时间：</td><td><input name='chenglishijian' type='text' id='chenglishijian' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelchenglishijian' /></td></tr>
		<tr><td  width="200">社团类别：</td><td><input name='shetuanleibie' type='text' id='shetuanleibie' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshetuanleibie' /></td></tr>
		<tr><td  width="200">所属学校：</td><td><input name='suoshuxuexiao' type='text' id='suoshuxuexiao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelsuoshuxuexiao' /></td></tr>
		<tr><td  width="200">社团邮箱：</td><td><input name='shetuanyouxiang' type='text' id='shetuanyouxiang' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshetuanyouxiang' /></td></tr>
		<tr><td  width="200">社团qq群：</td><td><input name='shetuanqqqun' type='text' id='shetuanqqqun' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshetuanqqqun' /></td></tr>
     <tr><td>社团图片：</td><td><input name='shetuantupian' type='text' id='shetuantupian' size='50' value='<%= mmm.get("shetuantupian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('shetuantupian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>社长：</td><td><input name='shechang' type='text' id='shechang' value='<%= mmm.get("shechang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>手机：</td><td><input name='shouji' type='text' id='shouji' value='<%= mmm.get("shouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>报名费用：</td><td><input name='baomingfeiyong' type='text' id='baomingfeiyong' value='<%= mmm.get("baomingfeiyong")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>社团简介：</td><td><textarea name='shetuanjianjie' cols='50' rows='5' id='shetuanjianjie' style='border:solid 1px #000000; color:#666666'><%=mmm.get("shetuanjianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


