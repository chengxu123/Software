<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>社团相册</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有社团相册列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  照片编号：<input name="zhaopianbianhao" type="text" id="zhaopianbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  标题：<input name="biaoti" type="text" id="biaoti" style='border:solid 1px #000000; color:#666666' size="12" />  发布人：<input name="faburen" type="text" id="faburen" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
  </form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>照片编号</td>
    <td bgcolor='#CCFFFF'>标题</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>图片</td>
    
    <td bgcolor='#CCFFFF'>发布人</td>
    <td  style="display:none"bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
	<!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"shetuanxiangce"); 
    String url = "shetuanxiangce_list.jsp?1=1"; 
    String sql =  "select * from shetuanxiangce where 1=1";
	
if(request.getParameter("zhaopianbianhao")=="" ||request.getParameter("zhaopianbianhao")==null ){}else{sql=sql+" and zhaopianbianhao like '%"+request.getParameter("zhaopianbianhao")+"%'";}
if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("biaoti")+"%'";}
if(request.getParameter("faburen")=="" ||request.getParameter("faburen")==null ){}else{sql=sql+" and faburen like '%"+request.getParameter("faburen")+"%'";}
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
    <td><%=map.get("zhaopianbianhao") %></td>
    <td><%=map.get("biaoti") %></td>
    <td width='90'><a href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td>
    
    <td><%=map.get("faburen") %></td>
    <td style="display:none" width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=shetuanxiangce" onClick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
	<!--dpinglun2-->
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="shetuanxiangce_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="shetuanxiangce_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="shetuanxiangce_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
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

