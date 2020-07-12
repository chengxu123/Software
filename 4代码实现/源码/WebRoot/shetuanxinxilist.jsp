<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
<head>
<title>社团信息</title>
<!--bixanjxiqxi-->
<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<!--hxsglxiangdxongjxs-->
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="984" height="1118" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td><table id="__01" width="984" height="785" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top"><table id="__01" width="766" height="785" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td><table id="__01" width="766" height="226" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="766" height="37" background="qtimages/1_02_01_02_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="16%" align="center"><span class="red"><strong>社团信息</strong></span></td>
                        <td width="84%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="766" height="722" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="8" background="qtimages/1_02_01_02_02_01.gif">&nbsp;</td>
                        <td width="744" height="180" valign="top">
						
						 <form name="form1" id="form1" method="post" action="">
   搜索:  社团编号：<input name="shetuanbianhao" type="text" id="shetuanbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  社团名称：<input name="shetuanmingcheng" type="text" id="shetuanmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  社长：<input name="shechang" type="text" id="shechang" style='border:solid 1px #000000; color:#666666' size="12" />  手机：<input name="shouji" type="text" id="shouji" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="切换视图"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='shetuanxinxilisttp.jsp';" />
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
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
    <td style="display:none" bgcolor='#CCFFFF'>报名费用</td>
    
    
    
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"shetuanxinxi"); 
    String url = "shetuanxinxilist.jsp?issh='是'"; 
    String sql =  "select * from shetuanxinxi where issh='是'";
	
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
    <td><%=map.get("shetuanbianhao") %></td><td><%=map.get("shetuanmingcheng") %></td><td width='90'><a href='<%=map.get("shetuantupian") %>' target='_blank'><img src='<%=map.get("shetuantupian") %>' width=88 height=99 border=0 /></a></td><td><%=map.get("shechang") %></td><td><%=map.get("shouji") %></td>
	<td style="display:none"><%=map.get("baomingfeiyong") %></td>
    
    <td width="30" align="center"> <a href="shetuanxinxidetail.jsp?id=<%=map.get("id")%>" >详细</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }						
						  
						  
						  </td>
                        <td width="14" background="qtimages/1_02_01_02_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_01_02_03.gif" width="766" height="9" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
            </table></td>
            <td valign="top"><%@ include file="qtleft.jsp"%></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td>
		
		<%@ include file="qtdown.jsp"%></td>
	</tr>
</table>
<!-- dfexnxxiaxng -->
</body>
</html>
<!--suxilxatxihuxan-->
