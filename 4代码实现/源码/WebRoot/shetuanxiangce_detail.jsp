<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>社团相册详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"shetuanxiangce");
     %>
  社团相册详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>照片编号：</td><td width='39%'><%=m.get("zhaopianbianhao")%></td><td  rowspan=3 align=center><a href=<%=m.get("tupian")%> target=_blank><img src=<%=m.get("tupian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>标题：</td><td width='39%'><%=m.get("biaoti")%></td></tr><tr><td width='11%' height=44>发布人：</td><td width='39%'><%=m.get("faburen")%></td></tr><tr><td width='11%' height=100  >介绍：</td><td width='39%' colspan=2 height=100 ><%=m.get("faburen")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


