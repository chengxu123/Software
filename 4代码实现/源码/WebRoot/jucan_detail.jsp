<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�۲���ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"jucan");
     %>
  �۲���ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>����⣺</td><td width='39%'><%=m.get("huodongbiaoti")%></td><td width='11%'>����ڣ�</td><td width='39%'><%=m.get("huodongriqi")%></td></tr><tr><td width='11%'>�û�����</td><td width='39%'><%=m.get("yonghuming")%></td><td width='11%'>������</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%'>�۲ͽ��ܣ�</td><td width='39%'><%=m.get("jucanjieshao")%></td><td width='11%'>�ٰ��ˣ�</td><td width='39%'><%=m.get("jubanren")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


