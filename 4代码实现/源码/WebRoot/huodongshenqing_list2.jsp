<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�����</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>���л�����б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ���ű�ţ�<input name="shetuanbianhao" type="text" id="shetuanbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  �������ƣ�<input name="shetuanmingcheng" type="text" id="shetuanmingcheng" style='border:solid 1px #000000; color:#666666' size="12" /> ����ͣ�<select name='huodongleixing' id='huodongleixing' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="����">����</option><option value="����">����</option></select>  �ʱ�䣺<input name="huodongshijian1" type="text" id="huodongshijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="huodongshijian2" type="text" id="huodongshijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  �����ˣ�<input name="shenqingren" type="text" id="shenqingren" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���ű��</td>    <td bgcolor='#CCFFFF'>��������</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>�����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF' width='65' align='center'>�ʱ��</td>    <td bgcolor='#CCFFFF'>������</td>    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"huodongshenqing"); 
    String url = "huodongshenqing_list2.jsp?1=1"; 
    String sql =  "select * from huodongshenqing where shenqingren='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("shetuanbianhao")=="" ||request.getParameter("shetuanbianhao")==null ){}else{sql=sql+" and shetuanbianhao like '%"+request.getParameter("shetuanbianhao")+"%'";}if(request.getParameter("shetuanmingcheng")=="" ||request.getParameter("shetuanmingcheng")==null ){}else{sql=sql+" and shetuanmingcheng like '%"+request.getParameter("shetuanmingcheng")+"%'";}if(request.getParameter("huodongleixing")=="" ||request.getParameter("huodongleixing")==null ){}else{sql=sql+" and huodongleixing like '%"+request.getParameter("huodongleixing")+"%'";}if (request.getParameter("huodongshijian1")==""  ||request.getParameter("huodongshijian1")==null ) {}else{sql=sql+" and huodongshijian >= '"+request.getParameter("huodongshijian1")+"'";}if (request.getParameter("huodongshijian2")==""  ||request.getParameter("huodongshijian2")==null ) {}else {sql=sql+" and huodongshijian <= '"+request.getParameter("huodongshijian2")+"'";}if(request.getParameter("shenqingren")=="" ||request.getParameter("shenqingren")==null ){}else{sql=sql+" and shenqingren like '%"+request.getParameter("shenqingren")+"%'";}
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
    <td><%=map.get("shetuanbianhao") %></td> <td><%=map.get("shetuanmingcheng") %></td> <td><%=map.get("mingcheng") %></td> <td><%=map.get("huodongleixing") %></td> <td><%=map.get("changdi") %></td> <td><%=map.get("huodongshijian") %></td>  <td><%=map.get("shenqingren") %></td> <td width='80' align='center'><%=map.get("issh")%></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="huodongshenqing_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="huodongshenqing_list2.jsp?scid=<%=map.get("id") %>" onclick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="huodongshenqing_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
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

