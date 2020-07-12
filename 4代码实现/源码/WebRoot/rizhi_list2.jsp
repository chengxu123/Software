<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>日志</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有日志列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  日志标题：<input name="rizhibiaoti" type="text" id="rizhibiaoti" style='border:solid 1px #000000; color:#666666' size="12" />  发表时间：<input name="fabiaoshijian1" type="text" id="fabiaoshijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="fabiaoshijian2" type="text" id="fabiaoshijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='rizhi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>日志标题</td>
    <td bgcolor='#CCFFFF' width='95' align='center'>发表时间</td>
    <td bgcolor='#CCFFFF'>日志内容</td>
    <td bgcolor='#CCFFFF'>发表人</td>
    
	
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"rizhi"); 
    String url = "rizhi_list2.jsp?1=1"; 
    String sql =  "select * from rizhi where 1=1";
	
if(request.getParameter("rizhibiaoti")=="" ||request.getParameter("rizhibiaoti")==null ){}else{sql=sql+" and rizhibiaoti like '%"+request.getParameter("rizhibiaoti")+"%'";}
if (request.getParameter("fabiaoshijian1")==""  ||request.getParameter("fabiaoshijian1")==null ) {}else{sql=sql+" and fabiaoshijian >= '"+request.getParameter("fabiaoshijian1")+"'";}
if (request.getParameter("fabiaoshijian2")==""  ||request.getParameter("fabiaoshijian2")==null ) {}else {sql=sql+" and fabiaoshijian <= '"+request.getParameter("fabiaoshijian2")+"'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("rizhibiaoti") %></td>
    <td><%=map.get("fabiaoshijian") %></td>
    <td><%=map.get("rizhineirong") %></td>
    <td><%=map.get("fabiaoren") %></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="rizhi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="rizhi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="rizhidetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

