<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 
 popheight = 39;
 </script>
 

<table id="__01" width="984" height="214" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="984" height="139" background="qtimages/1_01_01.gif"><table width="57%" height="51" border="0" align="left">
              <tr>
                <td><div style="font-family:宋体; color:#FFFFFF;  WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
                    <div align="center" class="STYLE5 STYLE1">大学生社团社交网站</div>
                </div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td width="984" height="38" background="qtimages/1_01_02.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="19%" align="center"><SCRIPT language=javascript>setCalendar();</SCRIPT></td>
                <td width="81%"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="red">
                  <tr>
                    <td align="center"><strong><a href="index.jsp"><font  class="STYLE2">首页</font></a></strong></td>
                    <td align="center"><strong><a href="news.jsp?lb=社团新闻"><font  class="STYLE2">社团新闻</font></a></strong></td>
                    <!--<td align="center"><strong><a href="dx_detail.jsp?lb=系统简介"><font  class="STYLE2">系统简介</font></a></strong></td>-->
                    
                    <td align="center"><strong><a href="userreg.jsp"><font  class="STYLE2">社员用户注册</font></a></strong></td>
					 <td align="center"><strong><a href="shechangxinxiadd.jsp"><font  class="STYLE2">社长注册</font></a></strong></td>
                    <td align="center"><strong><a href="shetuanxinxilisttp.jsp"><font  class="STYLE2">社团信息</font></a></strong></td>
                    <td align="center"><strong><a href="news.jsp?lb=规章制度"><font  class="STYLE2">规章制度</font></a></strong></td>
                    <td align="center"><strong><a href="rizhilist.jsp"><font  class="STYLE2">社团日志</font></a></strong></td>
					<td align="center"><strong><a href="lyblist.jsp"><font  class="STYLE2">在线留言</font></a></strong></td>
                    <td align="center"><strong><a href="login.jsp"><font  class="STYLE2">后台</font></a></strong></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td width="984" height="37" background="qtimages/1_01_03.gif"><TABLE cellSpacing=0 cellPadding=0 width="98%" 
border=0>
              <TBODY>
                <TR>
                  <TD width="9%" align=center vAlign=center class="h2">&nbsp;</TD>
                  <TD width="91%" align=right vAlign=center><marquee behavior=alternate width=100% scrollAmount=3 class="STYLE6">
                    欢迎登陆我站，希望能给你带来好心情，其他话语请您自己修改，谢谢合作！（注：此处文字您可以在qttop.jsp源码中自己修改）
                  </MARQUEE></TD>
                </TR>
              </TBODY>
            </TABLE></td>
          </tr>
        </table>

