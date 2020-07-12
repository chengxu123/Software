<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
<head>
<title>成员信息</title>
<!--bixanjxiqxi-->
<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<%
//xuxyaxodenxglxu
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"shetuanxinxi");
  String shetuanbianhao="";
  	String shetuanmingcheng="";
  	String baomingfeiyong="";
  	
  shetuanbianhao=(String)mlbdq.get("shetuanbianhao");
  	shetuanmingcheng=(String)mlbdq.get("shetuanmingcheng");
  	baomingfeiyong=(String)mlbdq.get("baomingfeiyong");
  	

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var shetuanbianhaoobj = document.getElementById("shetuanbianhao"); if(shetuanbianhaoobj.value==""){document.getElementById("clabelshetuanbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入社团编号</font>";return false;}else{document.getElementById("clabelshetuanbianhao").innerHTML="  "; } 
	var shetuanmingchengobj = document.getElementById("shetuanmingcheng"); if(shetuanmingchengobj.value==""){document.getElementById("clabelshetuanmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入社团名称</font>";return false;}else{document.getElementById("clabelshetuanmingcheng").innerHTML="  "; } 
	
}
function gow()
{
	document.location.href="chengyuanxinxiadd.jsp?id=<%=id%>&yonghuming="+document.form1.yonghuming.value;
}
</script>
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
                        <td width="16%" align="center"><span class="red"><strong>成员信息</strong></span></td>
                        <td width="84%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="766" height="722" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="8" background="qtimages/1_02_01_02_02_01.gif">&nbsp;</td>
                        <td width="744" height="180" valign="top">
						
						
  <% 
  
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//qiuji
//wxfladd
//youshenhe
//youzhifu
//jitihuan
 }
new CommDAO().insert(request,response,"chengyuanxinxi",ext,true,false,""); 
%>
   <form  action="chengyuanxinxiadd.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">社团编号：</td><td><input name='shetuanbianhao' type='text' id='shetuanbianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelshetuanbianhao' /></td></tr><script language="javascript">document.form1.shetuanbianhao.value='<%=shetuanbianhao%>';</script>
		<tr><td  width="200">社团名称：</td><td><input name='shetuanmingcheng' type='text' id='shetuanmingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelshetuanmingcheng' /></td></tr><script language="javascript">document.form1.shetuanmingcheng.value='<%=shetuanmingcheng%>';</script>
		<tr><td  width="200">报名费用：</td><td><input name='baomingfeiyong' type='text' id='baomingfeiyong' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.baomingfeiyong.value='<%=baomingfeiyong%>';</script>
		<tr><td>用户名：</td><td><%=Info.getselectsl("yonghuming","yonghuzhuce","yonghuming")%></td></tr>
		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td  width="200">手机：</td><td><input name='shouji' type='text' id='shouji' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td  width="200">邮箱：</td><td><input name='youxiang' type='text' id='youxiang' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td width="200">入团日期：</td><td><input name='rutuanriqi' type='text' id='rutuanriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">报名人：</td><td><input name='baomingren' type='text' id='baomingren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</table>
  </form>
						  
						  
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
<%
if(request.getParameter("yonghuming")==null || request.getParameter("yonghuming").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("yonghuming",request.getParameter("yonghuming"),"yonghuzhuce"); 
%>
<script language="javascript">
document.form1.yonghuming.value="<%=mmm.get("yonghuming")%>";
document.form1.xingming.value="<%=mmm.get("xingming")%>";
document.form1.shouji.value="<%=mmm.get("shouji")%>";
document.form1.youxiang.value="<%=mmm.get("youxiang")%>";
//suilafuzhi

</script>
<%
}
%>
<!--suxilxatxihuxan-->
