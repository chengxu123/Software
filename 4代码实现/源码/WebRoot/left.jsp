<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />
<link href="css/left.css" type="text/css" rel="stylesheet" />
<title>���˵�</title>
<script src="js/jquery.min.js"></script>
<script language="javascript" type="text/javascript" charset="utf-8" src="js/admin.js"></script>
</head>

<body oncontextmenu="return false" ondragstart="return false" onSelectStart="return false">
	   
	    <div class="div_bigmenu">
 		<div class="div_bigmenu_nav_down" id="nav_1" onclick="javascript:lefttoggle(1);">ϵͳ�û�����</div>
		<ul id="ul_1">
			<li><a href="yhzhgl.jsp" target='main'>����Ա�û�</a></li>
			<li><a href="mod.jsp" target='main'>�޸�����</a></li>
			<li><a href="yonghuzhuce_list.jsp" target='main'>ע���Ա����</a></li>
			<li><a href="shechangxinxi_list.jsp" target='main'>�糤ע�����</a></li>	
		</ul>
	    </div>
		
		
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(2);" id="nav_2">������Ϣ��ѯ</div>
		<ul id="ul_2">
			
			<li><a href="shetuanxinxi_list.jsp" target='main'>������Ϣ��ѯ</a></li>
		</ul>
	    </div> 
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(3);" id="nav_3">���Ż����</div>
		<ul id="ul_3">
			
			<li><a href="shetuanhuodong_list.jsp" target='main'>���Ż���</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(4);" id="nav_4">���ź��ƶȹ���</div>
		<ul id="ul_4">
			<li><a href="xinwentongzhi_add.jsp?lb=վ������" target='main'>���ź��ƶ����</a></li>
			<li><a href="xinwentongzhi_list.jsp?lb=վ������" target='main'>���ź��ƶȲ�ѯ</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(4);" id="nav_4">�ճ̱���Ϣ����</div>
		<ul id="ul_7">
			<li><a href="richengbiaoxinxi_add.jsp" target='main'>�ճ̱���Ϣ���</a></li>
			<li><a href="richengbiaoxinxi_list.jsp" target='main'>�ճ̱���Ϣ��ѯ</a></li>
		</ul>
		</div>
		

		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(5);" id="nav_5">����������</div>
		<ul id="ul_5">
			
			<li><a href="shetuanxiangce_list.jsp" target='main'>��������ѯ</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(6);" id="nav_6">ϵͳ����</div>
		<ul id="ul_6">
			
			<li><a href="youqinglianjie_add.jsp" target='main'>�����������</a></li>
			<li><a href="youqinglianjie_list.jsp" target='main'>�������Ӳ�ѯ</a></li>
			<!--<li><a href="dx.jsp?lb=ϵͳ���" target='main'>ϵͳ�������</a></li>-->
			
			<li><a href="dx.jsp?lb=ϵͳ����" target='main'>ϵͳ��������</a></li>
			<li><a href="liuyanban_list.jsp" target='main'>���Թ���</a></li>
		</ul>
		</div>
		
	</body>
</html>

