<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>考勤</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有考勤列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  社团编号：<input name="shetuanbianhao" type="text" id="shetuanbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  社团名称：<input name="shetuanmingcheng" type="text" id="shetuanmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  考勤日期：<input name="kaoqinriqi1" type="text" id="kaoqinriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="kaoqinriqi2" type="text" id="kaoqinriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' /> 考勤状态：<select name='kaoqinzhuangtai' id='kaoqinzhuangtai' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="正常">正常</option><option value="请假">请假</option></select>  考勤成员：<input name="kaoqinchengyuan" type="text" id="kaoqinchengyuan" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
  </form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>社团编号</td>
    <td bgcolor='#CCFFFF'>社团名称</td>
    <td bgcolor='#CCFFFF'>考勤日期</td>
    <td bgcolor='#CCFFFF'>考勤状态</td>
    <td bgcolor='#CCFFFF'>考勤成员</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
	<!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"kaoqin"); 
    String url = "kaoqin_list.jsp?1=1"; 
	
	//String sql1 =  "select * from shetuanxinxi where shechang='"+request.getSession().getAttribute("username")+"' ";
	
	//String tt=request.getParameter("shetuanbianhao");
	
    String sql =  "select kaoqin.* from kaoqin,shetuanxinxi where shetuanxinxi.shetuanbianhao=kaoqin.shetuanbianhao and shetuanxinxi.shechang='"+request.getSession().getAttribute("username")+"'";
	
if(request.getParameter("shetuanbianhao")=="" ||request.getParameter("shetuanbianhao")==null ){}else{sql=sql+" and shetuanbianhao like '%"+request.getParameter("shetuanbianhao")+"%'";}
if(request.getParameter("shetuanmingcheng")=="" ||request.getParameter("shetuanmingcheng")==null ){}else{sql=sql+" and shetuanmingcheng like '%"+request.getParameter("shetuanmingcheng")+"%'";}
if (request.getParameter("kaoqinriqi1")==""  ||request.getParameter("kaoqinriqi1")==null ) {}else{sql=sql+" and kaoqinriqi >= '"+request.getParameter("kaoqinriqi1")+"'";}
if (request.getParameter("kaoqinriqi2")==""  ||request.getParameter("kaoqinriqi2")==null ) {}else {sql=sql+" and kaoqinriqi <= '"+request.getParameter("kaoqinriqi2")+"'";}
if(request.getParameter("kaoqinzhuangtai")=="" ||request.getParameter("kaoqinzhuangtai")==null ){}else{sql=sql+" and kaoqinzhuangtai like '%"+request.getParameter("kaoqinzhuangtai")+"%'";}
if(request.getParameter("kaoqinchengyuan")=="" ||request.getParameter("kaoqinchengyuan")==null ){}else{sql=sql+" and kaoqinchengyuan like '%"+request.getParameter("kaoqinchengyuan")+"%'";}
    sql+=" order by id desc";
	//out.print(sql);
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
    <td><%=map.get("kaoqinriqi") %></td>
    <td><%=map.get("kaoqinzhuangtai") %></td>
    <td><%=map.get("kaoqinchengyuan") %></td>
    
    <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=kaoqin" onClick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
	<!--dpinglun2-->
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="kaoqin_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="kaoqin_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="kaoqin_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
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

