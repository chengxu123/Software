<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>财务管理</title>
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
  修改财务管理:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>标题：</td><td><input name='biaoti' type='text' id='biaoti' value='<%= mmm.get("biaoti")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>性质：</td><td><select name='xingzhi' id='xingzhi'><option value="收入">收入</option><option value="支出">支出</option></select></td></tr><script language="javascript">document.form1.xingzhi.value='<%=mmm.get("xingzhi")%>';</script>     <tr><td>金额：</td><td><input name='jine' type='text' id='jine' value='<%= mmm.get("jine")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>日期：</td><td><input name='riqi' type='text' id='riqi' value='<%= mmm.get("riqi")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>经手人：</td><td><input name='jingshouren' type='text' id='jingshouren' value='<%= mmm.get("jingshouren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>相关活动：</td><td><input name='xiangguanhuodong' type='text' id='xiangguanhuodong' size='50' value='<%=mmm.get("xiangguanhuodong")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


