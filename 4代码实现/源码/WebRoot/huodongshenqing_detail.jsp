<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>活动申请详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"huodongshenqing");
     %>
  活动申请详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>社团编号：</td><td width='39%'><%=m.get("shetuanbianhao")%></td><td width='11%'>社团名称：</td><td width='39%'><%=m.get("shetuanmingcheng")%></td></tr><tr><td width='11%'>名称：</td><td width='39%'><%=m.get("mingcheng")%></td><td width='11%'>活动类型：</td><td width='39%'><%=m.get("huodongleixing")%></td></tr><tr><td width='11%'>场地：</td><td width='39%'><%=m.get("changdi")%></td><td width='11%'>活动时间：</td><td width='39%'><%=m.get("huodongshijian")%></td></tr><tr><td width='11%'>活动简介：</td><td width='39%'><%=m.get("huodongjianjie")%></td><td width='11%'>申请人：</td><td width='39%'><%=m.get("shenqingren")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


