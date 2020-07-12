<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>聚餐</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有聚餐列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  活动标题：<input name="huodongbiaoti" type="text" id="huodongbiaoti" style='border:solid 1px #000000; color:#666666' size="12" />  活动日期：<input name="huodongriqi1" type="text" id="huodongriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="huodongriqi2" type="text" id="huodongriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  用户名：<input name="yonghuming" type="text" id="yonghuming" style='border:solid 1px #000000; color:#666666' size="12" />  举办人：<input name="jubanren" type="text" id="jubanren" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>活动标题</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>活动日期</td>
    <td bgcolor='#CCFFFF'>用户名</td>
    <td bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF'>举办人</td>
    
   
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"jucan"); 
    String url = "jucan_list1.jsp?1=1"; 
    String sql =  "select * from jucan where 1=1";
	
if(request.getParameter("huodongbiaoti")=="" ||request.getParameter("huodongbiaoti")==null ){}else{sql=sql+" and huodongbiaoti like '%"+request.getParameter("huodongbiaoti")+"%'";}
if (request.getParameter("huodongriqi1")==""  ||request.getParameter("huodongriqi1")==null ) {}else{sql=sql+" and huodongriqi >= '"+request.getParameter("huodongriqi1")+"'";}
if (request.getParameter("huodongriqi2")==""  ||request.getParameter("huodongriqi2")==null ) {}else {sql=sql+" and huodongriqi <= '"+request.getParameter("huodongriqi2")+"'";}
if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+request.getParameter("yonghuming")+"%'";}
if(request.getParameter("jubanren")=="" ||request.getParameter("jubanren")==null ){}else{sql=sql+" and jubanren like '%"+request.getParameter("jubanren")+"%'";}
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
    <td><%=map.get("huodongbiaoti") %></td>
 <td><%=map.get("huodongriqi") %></td>
 <td><%=map.get("yonghuming") %></td>
 <td><%=map.get("xingming") %></td>
 
 <td><%=map.get("jubanren") %></td>
 
   
    <td width="60" align="center">
	<!--<a href="jucan_updt.jsp?id=<%=map.get("id")%>">修改</a>  
	<a href="jucan_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a>-->
	<a href="jucan_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

