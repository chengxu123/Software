<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ճ̱���Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>�����ճ̱���Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����: ѧ�ڣ�<select name='xueqi' id='xueqi' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="һѧ��">һѧ��</option><option value="��ѧ��">��ѧ��</option></select>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='richengbiaoxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ѧ��</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>�ճ̱�</td>
    
	
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"richengbiaoxinxi"); 
    String url = "richengbiaoxinxi_list3.jsp?1=1"; 
    String sql =  "select * from richengbiaoxinxi where 1=1";
	
if(request.getParameter("xueqi")=="" ||request.getParameter("xueqi")==null ){}else{sql=sql+" and xueqi like '%"+request.getParameter("xueqi")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("xueqi") %></td>
    <td width='90' align='center'><a href='<%=map.get("richengbiao") %>' target='_blank'>����</a></td>
    
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="richengbiaoxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="richengbiaoxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <!--qiatnalijne--> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

