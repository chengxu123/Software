<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>成员信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"chengyuanxinxi");
     %>
  成员信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>社团编号：</td><td width='39%'><%=m.get("shetuanbianhao")%></td>
<td width='11%'>社团名称：</td><td width='39%'><%=m.get("shetuanmingcheng")%></td></tr><tr>
<td width='11%'>报名费用：</td><td width='39%'><%=m.get("baomingfeiyong")%></td>
<td width='11%'>用户名：</td><td width='39%'><%=m.get("yonghuming")%></td></tr><tr>
<td width='11%'>姓名：</td><td width='39%'><%=m.get("xingming")%></td>
<td width='11%'>手机：</td><td width='39%'><%=m.get("shouji")%></td></tr><tr>
<td width='11%'>邮箱：</td><td width='39%'><%=m.get("youxiang")%></td>
<td width='11%'>入团日期：</td><td width='39%'><%=m.get("rutuanriqi")%></td></tr><tr>
<td width='11%'>报名人：</td><td width='39%'><%=m.get("baomingren")%></td>
<td width='11%'>备注：</td><td width='39%'><%=m.get("beizhu")%></td>
</tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


