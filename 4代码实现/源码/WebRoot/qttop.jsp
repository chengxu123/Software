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
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 
 popheight = 39;
 </script>
 

<table id="__01" width="984" height="214" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="984" height="139" background="qtimages/1_01_01.gif"><table width="57%" height="51" border="0" align="left">
              <tr>
                <td><div style="font-family:����; color:#FFFFFF;  WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
                    <div align="center" class="STYLE5 STYLE1">��ѧ�������罻��վ</div>
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
                    <td align="center"><strong><a href="index.jsp"><font  class="STYLE2">��ҳ</font></a></strong></td>
                    <td align="center"><strong><a href="news.jsp?lb=��������"><font  class="STYLE2">��������</font></a></strong></td>
                    <!--<td align="center"><strong><a href="dx_detail.jsp?lb=ϵͳ���"><font  class="STYLE2">ϵͳ���</font></a></strong></td>-->
                    
                    <td align="center"><strong><a href="userreg.jsp"><font  class="STYLE2">��Ա�û�ע��</font></a></strong></td>
					 <td align="center"><strong><a href="shechangxinxiadd.jsp"><font  class="STYLE2">�糤ע��</font></a></strong></td>
                    <td align="center"><strong><a href="shetuanxinxilisttp.jsp"><font  class="STYLE2">������Ϣ</font></a></strong></td>
                    <td align="center"><strong><a href="news.jsp?lb=�����ƶ�"><font  class="STYLE2">�����ƶ�</font></a></strong></td>
                    <td align="center"><strong><a href="rizhilist.jsp"><font  class="STYLE2">������־</font></a></strong></td>
					<td align="center"><strong><a href="lyblist.jsp"><font  class="STYLE2">��������</font></a></strong></td>
                    <td align="center"><strong><a href="login.jsp"><font  class="STYLE2">��̨</font></a></strong></td>
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
                    ��ӭ��½��վ��ϣ���ܸ�����������飬�������������Լ��޸ģ�лл��������ע���˴�������������qttop.jspԴ�����Լ��޸ģ�
                  </MARQUEE></TD>
                </TR>
              </TBODY>
            </TABLE></td>
          </tr>
        </table>

