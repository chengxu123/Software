<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=shetuanxinxi.xls");
%>
<html>
  <head>
    <title>������Ϣ</title>
  </head>

  <body >
  <p>����������Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���ű��</td>
    <td bgcolor='#CCFFFF'>��������</td>
	<td bgcolor='#CCFFFF'>����ʱ��</td>
	<td bgcolor='#CCFFFF'>�������</td>
	<td bgcolor='#CCFFFF'>����ѧУ</td>
	<td bgcolor='#CCFFFF'>��������</td>
	<td bgcolor='#CCFFFF'>����qqȺ</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>����ͼƬ</td>
    <td bgcolor='#CCFFFF'>�糤</td>
    <td bgcolor='#CCFFFF'>�ֻ�</td>
    <td bgcolor='#CCFFFF'>��������</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "shetuanxinxi_list.jsp?1=1"; 
    String sql =  "select * from shetuanxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("shetuanbianhao") %></td>
    <td><%=map.get("shetuanmingcheng") %></td>
	<td><%=map.get("chenglishijian") %></td>
	<td><%=map.get("shetuanleibie") %></td>
	<td><%=map.get("suoshuxuexiao") %></td>
	<td><%=map.get("shetuanyouxiang") %></td>
	<td><%=map.get("shetuanqqqun") %></td>
    <td width='90'><a href='<%=map.get("shetuantupian") %>' target='_blank'><img src='<%=map.get("shetuantupian") %>' width=88 height=99 border=0 /></a></td>
    <td><%=map.get("shechang") %></td>
    <td><%=map.get("shouji") %></td>
    <td><%=map.get("baomingfeiyong") %></td>
    
    <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=shetuanxinxi" onClick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

