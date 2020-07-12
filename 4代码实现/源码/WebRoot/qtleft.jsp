<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<table id="__01" width="218" height="785" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table id="__01" width="218" height="204" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="218" height="39" background="qtimages/1_02_02_01_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="45%" height="22" align="center" valign="bottom"><span class="STYLE2"><strong>系统公告</strong></span></td>
                        <td width="55%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="218" height="154" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="8" background="qtimages/1_02_02_01_02_01.gif">&nbsp;</td>
                        <td width="198" height="154" background="qtimages/1_02_02_01_02_02.gif"><marquee border="0" direction="up" height="170" onMouseOut="start()" onMouseOver="stop()"
                scrollamount="1" scrolldelay="50"><TABLE width="92%" height="100%" 
            border=0 align=center 
      cellPadding=0 cellSpacing=5>
                      <TBODY><TR><TD><% HashMap m1 = new CommDAO().getmaps("leibie","系统公告","dx");out.print(Info.ensubStr(m1.get("content"),185)); %></TD></TR></TBODY></TABLE></marquee></td>
                        <td background="qtimages/1_02_02_01_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_03.gif" width="218" height="11" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="218" height="204" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="218" height="39" background="qtimages/1_02_02_01_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="45%" height="22" align="center" valign="bottom"><span class="STYLE2"><strong>用户登陆</strong></span></td>
                          <td width="55%">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="218" height="154" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="8" background="qtimages/1_02_02_01_02_01.gif">&nbsp;</td>
                          <td width="198" height="154" background="qtimages/1_02_02_01_02_02.gif">                            
						  
						   
						  <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
                          <form action="jspmxsstglxtdzkf4295?ac=login&amp;a=a" method="post" name="f11" id="f11" style="display: inline">
                            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="15" height="28">&nbsp;</td>
                                <td width="243" height="28">用户名:</td>
                                <td height="28" colspan="2"><input name="username" type="text" id="username" style="width:100px; height:20px; border:solid 1px #000000; color:#666666" /></td>
                              </tr>
                              <tr>
                                <td height="28">&nbsp;</td>
                                <td height="28">密码:</td>
                                <td height="28" colspan="2"><input name="pwd1" type="password" id="pwd1"  style="width:100px; height:20px; border:solid 1px #000000; color:#666666" /></td>
                              </tr>
                              <tr>
                                <td height="28">&nbsp;</td>
                                <td height="28">权限:</td>
                                <td height="28" colspan="2"><select name="cx" id="cx" style="width:100px; height:20px; border:solid 1px #000000; color:#666666" >
                                     <option value="社团成员">社团成员</option>
									<option value="社长">社长</option>
                                </select></td>
                              </tr>
                              <tr >
                                <td height="28">&nbsp;</td>
                                <td height="28">验证码</td>
                                <td width="97" height="28"><input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" /></td>
                                <td width="299"><a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" /> </a> </td>
                              </tr>
                              <script type="text/javascript">
          
           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="" || document.f11.pagerandom.value=="")
	{
		alert("请输入完整");
		return false;
	}
}
           
                          </script>
                              <tr>
                                <td height="38" align="center">&nbsp;</td>
                                <td height="38" colspan="3" align="center"><input type="submit" name="Submit" value="登陆" class="hsgbutton" onclick="return checklog();" />
                                    <input type="reset" name="Submit2" value="重置" class="hsgbutton" /></td>
                              </tr>
                            </table>
                          </form>
                          <%}else{ %>
                          <table width="90%" height="82%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="31%" height="30">用户名</td>
                              <td width="69%" height="30"><%=request.getSession().getAttribute("username")%> </td>
                            </tr>
                            <tr>
                              <td height="30">权限</td>
                              <td height="30"><%=request.getSession().getAttribute("cx")%> </td>
                            </tr>
                            <tr>
                              <td height="30" colspan="2" align="center"><input type="button" name="Submit3" value="退出" onclick="javascript:location.href='logout.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666" />
                                  <input type="button" name="Submit32" value="个人后台" onclick="javascript:location.href='main.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666" />
                              </td>
                            </tr>
                          </table>
                          <%} %>
						  
                            </td>
                          <td background="qtimages/1_02_02_01_02_03.gif">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_03.gif" width="218" height="11" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="218" height="159" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="218" height="39" background="qtimages/1_02_02_01_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="45%" height="22" align="center" valign="bottom"><span class="STYLE2"><strong>站内搜索</strong></span></td>
                          <td width="55%">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="106"><table id="__01" width="218" height="106" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="8" background="qtimages/1_02_02_01_02_01.gif">&nbsp;</td>
                          <td width="198" height="106" background="qtimages/1_02_02_01_02_02.gif">
						  
						  
						  
						   <form action="news.jsp" method="post" name="formsearch" id="formsearch" >
                            <table width="100%" height="17%" border="0" cellpadding="0" cellspacing="0">
                             
                                <tr>
                                  <td width="19%" height="30">标题</td>
                                  <td width="81%" height="30"><input name="keyword" type="text" id="keyword" size="12" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                                </tr>
                                <tr>
                                  <td height="30">类别</td>
                                  <td height="30"><select name="lb" style=" height:19px; border:solid 1px #000000; color:#666666">
                                       <%
						    for(HashMap mlb:new CommDAO().select("select distinct(leibie) as ss from xinwentongzhi")){
							%>
							<option value="<%=mlb.get("ss") %>"><%=mlb.get("ss") %></option>
							<%
							}
						   %>
                                    </select>
                                  </td>
                                </tr>
                                <tr>
                                  <td height="30">&nbsp;</td>
                                  <td height="30"><input type="submit" name="Submit4" value="提交" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                                </tr>
                             
                            </table>
                             </form>
							 
							 
							 </td>
                          <td background="qtimages/1_02_02_01_02_03.gif">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_03.gif" width="218" height="11" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="218" height="193" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="218" height="39" background="qtimages/1_02_02_01_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="45%" height="22" align="center" valign="bottom"><span class="STYLE2"><strong>友情连接</strong></span></td>
                          <td width="55%">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="142"><table id="__01" width="218" height="142" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="8" background="qtimages/1_02_02_01_02_01.gif">&nbsp;</td>
                          <td width="198" height="142" background="qtimages/1_02_02_01_02_02.gif"><table width="92%" border="0" align="center" cellpadding="0" cellspacing="0" class="newsline">
                            <%
    for(HashMap map:new CommDAO().select("select * from youqinglianjie order by id desc",1,8)){
     %>
                            <tr>
                              <td width="12%" height="25" align="center"><span class="STYLE2"><img src="qtimages/1.jpg" /></span></td>
                              <td width="20%" height="25"><a href="<%=map.get("wangzhi") %>" target="_blank" ><%=map.get("wangzhanmingcheng") %></a></td>
                              <td width="68%" height="25"><a href="<%=map.get("wangzhi") %>" target="_blank" ><%=map.get("wangzhi") %></a></td>
                            </tr>
                            <%
								  }
								  %>
                          </table></td>
                          <td background="qtimages/1_02_02_01_02_03.gif">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_01_03.gif" width="218" height="11" alt=""></td>
                  </tr>
                </table></td>
              </tr>
            </table>