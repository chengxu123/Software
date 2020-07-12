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
<title>左侧菜单</title>
<script src="js/jquery.min.js"></script>
<script language="javascript" type="text/javascript" charset="utf-8" src="js/admin.js"></script>
</head>

<body oncontextmenu="return false" ondragstart="return false" onSelectStart="return false">
	   
	    <div class="div_bigmenu">
 		<div class="div_bigmenu_nav_down" id="nav_1" onclick="javascript:lefttoggle(1);">个人资料管理</div>
		<ul id="ul_1">
			<li><a href="shechangxinxi_updt2.jsp" target='main'>个人资料管理</a></li>
		</ul>
	    </div>
		
		
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(2);" id="nav_2">社团信息管理</div>
		<ul id="ul_2">
			<li><a href="shetuanxinxi_add.jsp" target='main'>社团信息申请</a></li>
			<li><a href="shetuanxinxi_list2.jsp" target='main'>社团信息查询</a></li>
		</ul>
	    </div> 
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(3);" id="nav_3">社团相册管理</div>
		<ul id="ul_3">
			<li><a href="shetuanxiangce_add.jsp" target='main'>社团相册添加</a></li>
			<li><a href="shetuanxiangce_list2.jsp" target='main'>社团相册查询</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(4);" id="nav_4">社团成员管理</div>
		<ul id="ul_4">
			<li><a href="chengyuanxinxi_list.jsp" target='main'>社团成员审核</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(10);" id="nav_4">日志管理</div>
		<ul id="ul_10">
			<li><a href="rizhi_add.jsp" target='main'>日志添加</a></li>
			<li><a href="rizhi_list.jsp" target='main'>日志查询</a></li>
		</ul>
		</div>
		
		
	<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(5);" id="nav_5">日程表管理</div>
		<ul id="ul_5">
			
			<li><a href="richengbiaoxinxi_list3.jsp" target='main'>日程表查询</a></li>
		</ul>
		</div>
		
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(15);" id="nav_15">社团活动管理</div>
		<ul id="ul_15">
			<li><a href="shetuanhuodong_add.jsp" target='main'>社团活动添加</a></li>
			<li><a href="shetuanhuodong_list2.jsp" target='main'>社团活动查询</a></li>
		</ul>
		</div>
		
		<!--<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(6);" id="nav_6">成员出勤管理</div>
		<ul id="ul_6">
			
			<li><a href="kaoqin_list.jsp" target='main'>成员出勤查询</a></li>
		</ul>
		</div>-->
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(6);" id="nav_6">社团聚餐管理</div>
		<ul id="ul_6">
			<li><a href="jucan_add.jsp" target='main'>成员聚餐添加</a></li>
			<li><a href="jucan_list2.jsp" target='main'>成员聚餐查询</a></li>
		</ul>
		</div>
		
	</body>
</html>

