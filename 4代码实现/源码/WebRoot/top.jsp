<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>javascript:alert('�Բ������ѳ�ʱ��δ��½,����IE�����´򿪵�½��');window.close();</script>");
	out.close();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<title>ͷ��</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />
<link rel="stylesheet" type="text/css" href="css/top.css" />
<script src="js/topmenu.js"></script>
<script src="js/jquery.min.js"></script>

<script language="javascript" type="text/javascript">

var displayBar=true;
function switchBar(obj)
{
	if (document.all) //IE
	{
		if (displayBar)
		{
			parent.frame.cols="0,*";
			displayBar=false;
			obj.value="����߲˵�";
		}
		else{
			parent.frame.cols="210,*";
			displayBar=true;
			obj.value="�ر���߲˵�";
		}
	}
	else //Firefox 
	{  
		if (displayBar)
		{
			self.top.document.getElementById('frame').cols="0,*";
			displayBar=false;
			obj.value="����߲˵�";
		}
		else{
			self.top.document.getElementById('frame').cols="210,*";
			displayBar=true;
			obj.value="�ر���߲˵�";
		}
	}
}
</script>
</head>

<body oncontextmenu="return false" ondragstart="return false" onSelectStart="return false">
<div class="top_box">
    <div class="top_logo"><div align="center" style="color: #CCFFCC;font-size: 13pt;font-weight: bold;">��ѧ�������罻��վ</div></div>
    <div class="top_nav">
      <div class="top_nav_sm">
		 		 <span style="float:right; padding-right:12px"> [<a href="index.jsp" target='_parent' ><strong>ǰ̨��ҳ</strong></a>]  <!--[<a href="suoping.jsp" target='_parent' ><strong>��ʱ�뿪</strong></a>]--></span>
		 		��ã�<%=request.getSession().getAttribute("username")%> [<%=request.getSession().getAttribute("cx")%>]  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;		</div>
         <div class="top_nav_xm">
             <div class="navtit" id="navtit">
                <span onclick="changeMenu(this);"  class="hover"><a href="sy.jsp" target='main'><i>��̨��ҳ</i></a></span>
				<!--<span onclick="changeMenu(this);" ><a href="yhzhgl.jsp" target='main'><i>�û�����</i></a></span>				
				<span onclick="changeMenu(this);"><a href="mod.jsp" target='main'><i>�޸�����</i></a></span>
				<span onclick="changeMenu(this);"><a href="jisuanqi/index.html" target='main'><i>������</i></a></span>	-->
				<!--<span onclick="changeMenu(this);"><a href="wnl2.jsp" target="main"><i>������</i></a></span>-->
				<!--<span onclick="changeMenu(this);"><a href="dayucms.jsp?file=left&menu=module&path=adv" target="leftFrame"><i>������</i></a></span>-->	
				<!--<span onclick="changeMenu(this);"><a href="dayucms.jsp?file=left&menu=other" target='leftFrame'><i>��չ����</i></a></span>-->
           </div>
         </div>
    </div>
    <div class="top_bar"><input onClick="switchBar(this)" type="button" value="�ر���߲˵�" name="SubmitBtn" class="bntof"/> 
    <div class="top_she">  
		<a href="javascript:void(0);" onClick="self.top.location.href='logout.jsp'">��ȫע��</a> <a onClick="javascript:window.parent.main.history.go(-1);" style="cursor:pointer;">ǰ��һҳ</a>
		 <a onclick="javascript:window.parent.main.location.reload();" style="cursor:pointer;">ˢ��ҳ��</a>    </div>
    </div>
</div>
</body>
</html>

