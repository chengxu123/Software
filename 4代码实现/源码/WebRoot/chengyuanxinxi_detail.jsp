<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��Ա��Ϣ��ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"chengyuanxinxi");
     %>
  ��Ա��Ϣ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>���ű�ţ�</td><td width='39%'><%=m.get("shetuanbianhao")%></td>
<td width='11%'>�������ƣ�</td><td width='39%'><%=m.get("shetuanmingcheng")%></td></tr><tr>
<td width='11%'>�������ã�</td><td width='39%'><%=m.get("baomingfeiyong")%></td>
<td width='11%'>�û�����</td><td width='39%'><%=m.get("yonghuming")%></td></tr><tr>
<td width='11%'>������</td><td width='39%'><%=m.get("xingming")%></td>
<td width='11%'>�ֻ���</td><td width='39%'><%=m.get("shouji")%></td></tr><tr>
<td width='11%'>���䣺</td><td width='39%'><%=m.get("youxiang")%></td>
<td width='11%'>�������ڣ�</td><td width='39%'><%=m.get("rutuanriqi")%></td></tr><tr>
<td width='11%'>�����ˣ�</td><td width='39%'><%=m.get("baomingren")%></td>
<td width='11%'>��ע��</td><td width='39%'><%=m.get("beizhu")%></td>
</tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


