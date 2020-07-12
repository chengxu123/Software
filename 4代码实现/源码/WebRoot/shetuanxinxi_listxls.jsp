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
    <title>社团信息</title>
  </head>

  <body >
  <p>已有社团信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>社团编号</td>
    <td bgcolor='#CCFFFF'>社团名称</td>
	<td bgcolor='#CCFFFF'>成立时间</td>
	<td bgcolor='#CCFFFF'>社团类别</td>
	<td bgcolor='#CCFFFF'>所属学校</td>
	<td bgcolor='#CCFFFF'>社团邮箱</td>
	<td bgcolor='#CCFFFF'>社团qq群</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>社团图片</td>
    <td bgcolor='#CCFFFF'>社长</td>
    <td bgcolor='#CCFFFF'>手机</td>
    <td bgcolor='#CCFFFF'>报名费用</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

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
    
    <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=shetuanxinxi" onClick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

