<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���Ż</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>�������Ż�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ��ţ�<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ���⣺<input name="biaoti" type="text" id="biaoti" style='border:solid 1px #000000; color:#666666' size="12" />  ���ڣ�<input name="riqi1" type="text" id="riqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="riqi2" type="text" id="riqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  �����ˣ�<input name="faburen" type="text" id="faburen" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF' width='65' align='center'>����</td>    <td bgcolor='#CCFFFF'>������</td>    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"shetuanhuodong"); 
    String url = "shetuanhuodong_list2.jsp?1=1"; 
    String sql =  "select * from shetuanhuodong where faburen='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("biaoti")+"%'";}if (request.getParameter("riqi1")==""  ||request.getParameter("riqi1")==null ) {}else{sql=sql+" and riqi >= '"+request.getParameter("riqi1")+"'";}if (request.getParameter("riqi2")==""  ||request.getParameter("riqi2")==null ) {}else {sql=sql+" and riqi <= '"+request.getParameter("riqi2")+"'";}if(request.getParameter("faburen")=="" ||request.getParameter("faburen")==null ){}else{sql=sql+" and faburen like '%"+request.getParameter("faburen")+"%'";}
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
    <td><%=map.get("bianhao") %></td> <td><%=map.get("biaoti") %></td> <td><%=map.get("riqi") %></td> <td><%=map.get("faburen") %></td>  <td width='80' align='center'><%=map.get("issh")%></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="shetuanhuodong_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="shetuanhuodong_list2.jsp?scid=<%=map.get("id") %>" onclick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="shetuanhuodongdetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
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

