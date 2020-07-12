<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>考勤详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"kaoqin");
     %>
  考勤详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>社团编号：</td><td width='39%'><%=m.get("shetuanbianhao")%></td><td width='11%'>社团名称：</td><td width='39%'><%=m.get("shetuanmingcheng")%></td></tr><tr><td width='11%'>考勤日期：</td><td width='39%'><%=m.get("kaoqinriqi")%></td><td width='11%'>考勤状态：</td><td width='39%'><%=m.get("kaoqinzhuangtai")%></td></tr><tr><td width='11%'>考勤成员：</td><td width='39%'><%=m.get("kaoqinchengyuan")%></td><td width='11%'>备注：</td><td width='39%'><%=m.get("beizhu")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


