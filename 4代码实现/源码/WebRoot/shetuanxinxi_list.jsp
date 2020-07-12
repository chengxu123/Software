<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>社团信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有社团信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  社团编号：<input name="shetuanbianhao" type="text" id="shetuanbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  社团名称：<input name="shetuanmingcheng" type="text" id="shetuanmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  社长：<input name="shechang" type="text" id="shechang" style='border:solid 1px #000000; color:#666666' size="12" />  手机：<input name="shouji" type="text" id="shouji" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
  </form>

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
	<!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"shetuanxinxi"); 
    String url = "shetuanxinxi_list.jsp?1=1"; 
    String sql =  "select * from shetuanxinxi where 1=1";
	
if(request.getParameter("shetuanbianhao")=="" ||request.getParameter("shetuanbianhao")==null ){}else{sql=sql+" and shetuanbianhao like '%"+request.getParameter("shetuanbianhao")+"%'";}
if(request.getParameter("shetuanmingcheng")=="" ||request.getParameter("shetuanmingcheng")==null ){}else{sql=sql+" and shetuanmingcheng like '%"+request.getParameter("shetuanmingcheng")+"%'";}
if(request.getParameter("chenglishijian")=="" ||request.getParameter("chenglishijian")==null ){}else{sql=sql+" and chenglishijian like '%"+request.getParameter("chenglishijian")+"%'";}
if(request.getParameter("shetuanleibie")=="" ||request.getParameter("shetuanleibie")==null ){}else{sql=sql+" and shetuanleibie like '%"+request.getParameter("shetuanleibie")+"%'";}
if(request.getParameter("suoshuxuexiao")=="" ||request.getParameter("suoshuxuexiao")==null ){}else{sql=sql+" and suoshuxuexiao like '%"+request.getParameter("suoshuxuexiao")+"%'";}
if(request.getParameter("shetuanyouxiang")=="" ||request.getParameter("shetuanyouxiang")==null ){}else{sql=sql+" and shetuanyouxiang like '%"+request.getParameter("shetuanyouxiang")+"%'";}
if(request.getParameter("shetuanqqqun")=="" ||request.getParameter("shetuanqqqun")==null ){}else{sql=sql+" and shetuanqqqun like '%"+request.getParameter("shetuanqqqun")+"%'";}
if(request.getParameter("shechang")=="" ||request.getParameter("shechang")==null ){}else{sql=sql+" and shechang like '%"+request.getParameter("shechang")+"%'";}
if(request.getParameter("shouji")=="" ||request.getParameter("shouji")==null ){}else{sql=sql+" and shouji like '%"+request.getParameter("shouji")+"%'";}
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
	<!--dpinglun2-->
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="shetuanxinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="shetuanxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="shetuanxinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
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

