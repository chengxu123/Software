<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�۲�</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>���о۲��б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ����⣺<input name="huodongbiaoti" type="text" id="huodongbiaoti" style='border:solid 1px #000000; color:#666666' size="12" />  ����ڣ�<input name="huodongriqi1" type="text" id="huodongriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="huodongriqi2" type="text" id="huodongriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  �û�����<input name="yonghuming" type="text" id="yonghuming" style='border:solid 1px #000000; color:#666666' size="12" />  �ٰ��ˣ�<input name="jubanren" type="text" id="jubanren" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�����</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>�����</td>
    <td bgcolor='#CCFFFF'>�û���</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>�ٰ���</td>
    
   
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
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
	<!--<a href="jucan_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  
	<a href="jucan_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a>-->
	<a href="jucan_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
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

