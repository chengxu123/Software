<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
<head>
<title>活动申请</title>
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
                        <td width="16%" align="center"><span class="red"><strong>活动申请</strong></span></td>
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
   搜索:  社团编号：<input name="shetuanbianhao" type="text" id="shetuanbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  社团名称：<input name="shetuanmingcheng" type="text" id="shetuanmingcheng" style='border:solid 1px #000000; color:#666666' size="12" /> 活动类型：<select name='huodongleixing' id='huodongleixing' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="室内">室内</option><option value="室外">室外</option></select>  活动时间：<input name="huodongshijian1" type="text" id="huodongshijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="huodongshijian2" type="text" id="huodongshijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  申请人：<input name="shenqingren" type="text" id="shenqingren" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="切换视图"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='huodongshenqinglisttp.jsp';" />
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>社团编号</td>    <td bgcolor='#CCFFFF'>社团名称</td>    <td bgcolor='#CCFFFF'>名称</td>    <td bgcolor='#CCFFFF'>活动类型</td>    <td bgcolor='#CCFFFF'>场地</td>    <td bgcolor='#CCFFFF' width='65' align='center'>活动时间</td>        <td bgcolor='#CCFFFF'>申请人</td>    
    
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"huodongshenqing"); 
    String url = "huodongshenqinglist.jsp?issh='是'"; 
    String sql =  "select * from huodongshenqing where issh='是'";
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
    <td><%=map.get("shetuanbianhao") %></td><td><%=map.get("shetuanmingcheng") %></td><td><%=map.get("mingcheng") %></td><td><%=map.get("huodongleixing") %></td><td><%=map.get("changdi") %></td><td><%=map.get("huodongshijian") %></td><td><%=map.get("shenqingren") %></td>
    
    <td width="30" align="center"> <a href="huodongshenqingdetail.jsp?id=<%=map.get("id")%>" >详细</a></td>
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
