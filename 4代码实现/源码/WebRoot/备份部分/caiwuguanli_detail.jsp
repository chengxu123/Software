<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>财务管理详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"caiwuguanli");
     %>
  财务管理详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>编号：</td><td width='39%'><%=m.get("bianhao")%></td><td width='11%'>标题：</td><td width='39%'><%=m.get("biaoti")%></td></tr><tr><td width='11%'>性质：</td><td width='39%'><%=m.get("xingzhi")%></td><td width='11%'>金额：</td><td width='39%'><%=m.get("jine")%></td></tr><tr><td width='11%'>日期：</td><td width='39%'><%=m.get("riqi")%></td><td width='11%'>经手人：</td><td width='39%'><%=m.get("jingshouren")%></td></tr><tr><td width='11%'>相关活动：</td><td width='39%'><%=m.get("xiangguanhuodong")%></td><td width='11%'>备注：</td><td width='39%'><%=m.get("beizhu")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


