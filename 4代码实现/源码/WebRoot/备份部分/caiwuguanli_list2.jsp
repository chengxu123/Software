<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>财务管理</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有财务管理列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  编号：<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' size="12" />  标题：<input name="biaoti" type="text" id="biaoti" style='border:solid 1px #000000; color:#666666' size="12" /> 性质：<select name='xingzhi' id='xingzhi' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="收入">收入</option><option value="支出">支出</option></select>  日期：<input name="riqi1" type="text" id="riqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="riqi2" type="text" id="riqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  经手人：<input name="jingshouren" type="text" id="jingshouren" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>编号</td>    <td bgcolor='#CCFFFF'>标题</td>    <td bgcolor='#CCFFFF'>性质</td>    <td bgcolor='#CCFFFF'>金额</td>    <td bgcolor='#CCFFFF' width='65' align='center'>日期</td>    <td bgcolor='#CCFFFF'>经手人</td>    <td bgcolor='#CCFFFF'>相关活动</td>    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"caiwuguanli"); 
    String url = "caiwuguanli_list2.jsp?1=1"; 
    String sql =  "select * from caiwuguanli where jingshouren='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("biaoti")+"%'";}if(request.getParameter("xingzhi")=="" ||request.getParameter("xingzhi")==null ){}else{sql=sql+" and xingzhi like '%"+request.getParameter("xingzhi")+"%'";}if (request.getParameter("riqi1")==""  ||request.getParameter("riqi1")==null ) {}else{sql=sql+" and riqi >= '"+request.getParameter("riqi1")+"'";}if (request.getParameter("riqi2")==""  ||request.getParameter("riqi2")==null ) {}else {sql=sql+" and riqi <= '"+request.getParameter("riqi2")+"'";}if(request.getParameter("jingshouren")=="" ||request.getParameter("jingshouren")==null ){}else{sql=sql+" and jingshouren like '%"+request.getParameter("jingshouren")+"%'";}
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
    <td><%=map.get("bianhao") %></td> <td><%=map.get("biaoti") %></td> <td><%=map.get("xingzhi") %></td> <td><%=map.get("jine") %></td> <td><%=map.get("riqi") %></td> <td><%=map.get("jingshouren") %></td> <td><%=map.get("xiangguanhuodong") %></td>  
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="caiwuguanli_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="caiwuguanli_list2.jsp?scid=<%=map.get("id") %>" onclick="return confirm('真的要删除？')">删除</a> <a href="caiwuguanli_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
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

