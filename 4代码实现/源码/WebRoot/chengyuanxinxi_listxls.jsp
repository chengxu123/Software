<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=chengyuanxinxi.xls");
%>
<html>
  <head>
    <title>成员信息</title>
  </head>

  <body >
  <p>已有成员信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>社团编号</td>
    <td bgcolor='#CCFFFF'>社团名称</td>
    <td bgcolor='#CCFFFF'>报名费用</td>
    <td bgcolor='#CCFFFF'>用户名</td>
    <td bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF'>手机</td>
    <td bgcolor='#CCFFFF'>邮箱</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>入团日期</td>
    <td bgcolor='#CCFFFF'>报名人</td>
    
    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "chengyuanxinxi_list.jsp?1=1"; 
    String sql =  "select * from chengyuanxinxi where 1=1";
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
    <td><%=map.get("baomingfeiyong") %></td>
    <td><%=map.get("yonghuming") %></td>
    <td><%=map.get("xingming") %></td>
    <td><%=map.get("shouji") %></td>
    <td><%=map.get("youxiang") %></td>
    <td><%=map.get("rutuanriqi") %></td>
    <td><%=map.get("baomingren") %></td>
    
    
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

