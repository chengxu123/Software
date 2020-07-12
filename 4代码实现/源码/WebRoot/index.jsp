<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
<head>
<title>大学生社团社交网站</title><script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
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
                <td><table id="__01" width="766" height="265" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="313" height="265" align="center">
					<%=new CommDAO().DynamicImage("",6,310,231) %>
					</td>
                    <td><table id="__01" width="453" height="265" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="453" height="38" background="qtimages/1_02_01_01_02_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="26%" align="center"><a href="news.jsp?lb=社团新闻"><span class="red"><strong>社团新闻</strong></span></a></td>
                            <td width="74%">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><table id="__01" width="453" height="217" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td><img src="qtimages/1_02_01_01_02_02_01.gif" width="8" height="217" alt=""></td>
                            <td width="433" height="217" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newsline">
                              <%
										
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='社团新闻' order by id desc ",1,7)){
	
     %>
                              <tr height="25">
                                <td width="15" align="center" class="newslist"><img src="qtimages/1.jpg" /></td>
                                <td width="383"  class="newslist"><a href="gg_detail.jsp?id=<%=map.get("id")%>"><%=Info.ensubStr(map.get("biaoti"),28)%></a></td>
                                <td width="63" class="newslist"><%=map.get("addtime").toString().substring(0,10) %></td>
                              </tr>
                              <%
							}
							%>
                            </table></td>
                            <td><img src="qtimages/1_02_01_01_02_02_03.gif" width="12" height="217" alt=""></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="qtimages/1_02_01_01_02_03.gif" width="453" height="10" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="766" height="226" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="766" height="37" background="qtimages/1_02_01_02_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="16%" align="center"><a href="shetuanxinxilist.jsp"><span class="red"><strong>社团风采</strong></span></a></td>
                        <td width="84%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="766" height="180" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="8" background="qtimages/1_02_01_02_02_01.gif">&nbsp;</td>
                        <td width="744" height="180">
						
						
						 <div style="margin:0px;">
                  <div id="demo"  style="float:left; overflow:hidden">
                    <div id="indemo">
                      <div id="demo1">
                        <div id="dbgdtp">
				<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                      <%
        for(HashMap m:new CommDAO().select("select * from shetuanxinxi order by id desc",1,8)){
         %>
	    <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0" id="product">
	        <tr align="center">
	          <td>
              <div  style=" margin-left:13px; width:150px; height:120px; border:1px #CCC solid; padding:2px; background:#FFF">
              <a href="<%=m.get("shetuantupian") %>" target=""><img src="<%=m.get("shetuantupian") %>" border="0" title="<%=m.get("shetuanmingcheng") %>"  height="120" width="150"/></a></div></td>
	        </tr>
	        <tr align="center">
	          <td ><a href="" 
	          			target="">
	          		<%=m.get("shetuanmingcheng") %>
	          	</a></td>
	        </tr>
	       
       
	      </table></td>
          <%} %>
                  </tr>
                </table>
				
				 </div>
                      </div>
                      <div id="demo2"></div>
                    </div>
                  </div>
                  
                  
                  
                  
	       <script language="javascript"> 
			var speed=20;
			var tab=document.getElementById("demo"); 
			var tab1=document.getElementById("demo1"); 
			var tab2=document.getElementById("demo2"); 
			tab2.innerHTML=tab1.innerHTML; 
			function Marquee(){ 
			if(tab2.offsetWidth-tab.scrollLeft<=0) 
			tab.scrollLeft-=tab1.offsetWidth 
			else{ 
			tab.scrollLeft++; 
			} 
			} 
			var MyMar=setInterval(Marquee,speed); 
			tab.onmouseover=function() {clearInterval(MyMar)}; 
			tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)}; 
			</script>
       
                  <style type="text/css">
<!--
#dbgdtp {float:left;  margin:0px; }
#demo {overflow:hidden; width: 744px; }
#demo1 {float: left; }
#demo2 {float: left; }
#indemo {float: left; width: 1500%; }
-->
</style>



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
              <tr>
                <td><table id="__01" width="766" height="294" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><table id="__01" width="381" height="294" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="381" height="39" background="qtimages/1_02_01_03_01_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="36%" align="center"><a href="news.jsp?lb=规章制度"><span class="red"><strong>规章制度</strong></span></a></td>
                            <td width="64%">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><table id="__01" width="381" height="243" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="5" background="qtimages/1_02_01_03_01_02_01.gif">&nbsp;</td>
                            <td width="368" height="243" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newsline">
                              <%
                                for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='规章制度' order by id desc",1,6)){
								%>
                              <tr height="25">
                                <td width="7%" align="center" class="newslist"><img src="qtimages/1.jpg" width="7" height="7"  /></td>
                                <td width="93%" class="newslist"><a href="gg_detail.jsp?id=<%=map.get("id")%>"><%=Info.ensubStr(map.get("biaoti"),26)%></a></td>
                              </tr>
                              <%
							}
							%>
                            </table></td>
                            <td width="8" background="qtimages/1_02_01_03_01_02_03.gif">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="qtimages/1_02_01_03_01_03.gif" width="381" height="12" alt=""></td>
                      </tr>
                    </table></td>
                    <td><table id="__01" width="381" height="294" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="381" height="39" background="qtimages/1_02_01_03_01_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="36%" align="center"><a href="shetuanhuodonglist.jsp"><span class="red"><strong>社团活动</strong></span></a></td>
                              <td width="64%">&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><table id="__01" width="381" height="243" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="5" background="qtimages/1_02_01_03_01_02_01.gif">&nbsp;</td>
                              <td width="368" height="243" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newsline">
                                <%
                                for(HashMap map:new CommDAO().select("select * from shetuanhuodong where issh='是' order by id desc",1,6)){
								%>
                                <tr height="25">
                                  <td width="7%" align="center" class="newslist"><img src="qtimages/1.jpg" width="7" height="7"  /></td>
                                  <td width="93%" class="newslist"><a href="shetuanhuodongdetail.jsp?id=<%=map.get("id")%>"><%=Info.ensubStr(map.get("biaoti"),26)%></a></td>
                                </tr>
                                <%
							}
							%>
                              </table></td>
                              <td width="8" background="qtimages/1_02_01_03_01_02_03.gif">&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="qtimages/1_02_01_03_01_03.gif" width="381" height="12" alt=""></td>
                      </tr>
                    </table></td>
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
</body>
</html>