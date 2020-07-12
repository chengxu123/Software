<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>聚餐详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"jucan");
     %>
  聚餐详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>活动标题：</td><td width='39%'><%=m.get("huodongbiaoti")%></td><td width='11%'>活动日期：</td><td width='39%'><%=m.get("huodongriqi")%></td></tr><tr><td width='11%'>用户名：</td><td width='39%'><%=m.get("yonghuming")%></td><td width='11%'>姓名：</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%'>聚餐介绍：</td><td width='39%'><%=m.get("jucanjieshao")%></td><td width='11%'>举办人：</td><td width='39%'><%=m.get("jubanren")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


