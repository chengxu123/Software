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
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%
	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"shetuanxinxi");
	//ldlbfz
     %>
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
						
						
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>社团编号：</td><td width='39%'><%=mqt.get("shetuanbianhao")%></td><td  rowspan=5 align=center><a href=<%=mqt.get("shetuantupian")%> target=_blank><img src=<%=mqt.get("shetuantupian")%> width=228 height=215 border=0></a></td></tr><tr>
         <td width='11%' height=44>社团名称：</td><td width='39%'><%=mqt.get("shetuanmingcheng")%></td></tr><tr>
         <td width='11%' height=44>成立时间：</td><td width='39%'><%=mqt.get("chenglishijian")%></td></tr><tr>
		 <td width='11%' height=44>社团类别：</td><td width='39%'><%=mqt.get("shetuanleibie")%></td></tr><tr>
		 <td width='11%' height=44>所属学校：</td><td width='39%'><%=mqt.get("suoshuxuexiao")%></td></tr><tr>
		 <td width='11%' height=44>社团邮箱：</td><td width='39%'><%=mqt.get("shetuanyouxiang")%></td></tr><tr>
		 <td width='11%' height=44>社团qq群：</td><td width='39%'><%=mqt.get("shetuanqqqun")%></td></tr><tr>
         <td width='11%' height=44>社长：</td><td width='39%'><%=mqt.get("shechang")%></td></tr><tr>
         <td width='11%' height=44>手机：</td><td width='39%'><%=mqt.get("shouji")%></td></tr><tr>
         <td width='11%' height=44>报名费用：</td><td width='39%'><%=mqt.get("baomingfeiyong")%></td></tr><tr>
         
         <td width='11%' height=100  >社团简介：</td><td width='39%' colspan=2 height=100 ><%=mqt.get("shetuanjianjie")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />
<input type=button name=Submit52 value=打印 onClick="javascript:window.print()" />
</td></tr>
    
  </table>
						  
						  
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
