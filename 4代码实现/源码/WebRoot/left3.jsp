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
 		<div class="div_bigmenu_nav_down" id="nav_1" onclick="javascript:lefttoggle(1);">�������Ϲ���</div>
		<ul id="ul_1">
			<li><a href="shechangxinxi_updt2.jsp" target='main'>�������Ϲ���</a></li>
		</ul>
	    </div>
		
		
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(2);" id="nav_2">������Ϣ����</div>
		<ul id="ul_2">
			<li><a href="shetuanxinxi_add.jsp" target='main'>������Ϣ����</a></li>
			<li><a href="shetuanxinxi_list2.jsp" target='main'>������Ϣ��ѯ</a></li>
		</ul>
	    </div> 
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(3);" id="nav_3">����������</div>
		<ul id="ul_3">
			<li><a href="shetuanxiangce_add.jsp" target='main'>����������</a></li>
			<li><a href="shetuanxiangce_list2.jsp" target='main'>��������ѯ</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(4);" id="nav_4">���ų�Ա����</div>
		<ul id="ul_4">
			<li><a href="chengyuanxinxi_list.jsp" target='main'>���ų�Ա���</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(10);" id="nav_4">��־����</div>
		<ul id="ul_10">
			<li><a href="rizhi_add.jsp" target='main'>��־���</a></li>
			<li><a href="rizhi_list.jsp" target='main'>��־��ѯ</a></li>
		</ul>
		</div>
		
		
	<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(5);" id="nav_5">�ճ̱����</div>
		<ul id="ul_5">
			
			<li><a href="richengbiaoxinxi_list3.jsp" target='main'>�ճ̱��ѯ</a></li>
		</ul>
		</div>
		
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(15);" id="nav_15">���Ż����</div>
		<ul id="ul_15">
			<li><a href="shetuanhuodong_add.jsp" target='main'>���Ż���</a></li>
			<li><a href="shetuanhuodong_list2.jsp" target='main'>���Ż��ѯ</a></li>
		</ul>
		</div>
		
		<!--<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(6);" id="nav_6">��Ա���ڹ���</div>
		<ul id="ul_6">
			
			<li><a href="kaoqin_list.jsp" target='main'>��Ա���ڲ�ѯ</a></li>
		</ul>
		</div>-->
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(6);" id="nav_6">���ž۲͹���</div>
		<ul id="ul_6">
			<li><a href="jucan_add.jsp" target='main'>��Ա�۲����</a></li>
			<li><a href="jucan_list2.jsp" target='main'>��Ա�۲Ͳ�ѯ</a></li>
		</ul>
		</div>
		
	</body>
</html>

