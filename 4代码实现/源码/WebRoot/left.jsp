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
 		<div class="div_bigmenu_nav_down" id="nav_1" onclick="javascript:lefttoggle(1);">系统用户管理</div>
		<ul id="ul_1">
			<li><a href="yhzhgl.jsp" target='main'>管理员用户</a></li>
			<li><a href="mod.jsp" target='main'>修改密码</a></li>
			<li><a href="yonghuzhuce_list.jsp" target='main'>注册会员管理</a></li>
			<li><a href="shechangxinxi_list.jsp" target='main'>社长注册管理</a></li>	
		</ul>
	    </div>
		
		
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(2);" id="nav_2">社团信息查询</div>
		<ul id="ul_2">
			
			<li><a href="shetuanxinxi_list.jsp" target='main'>社团信息查询</a></li>
		</ul>
	    </div> 
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(3);" id="nav_3">社团活动管理</div>
		<ul id="ul_3">
			
			<li><a href="shetuanhuodong_list.jsp" target='main'>社团活动审核</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(4);" id="nav_4">新闻和制度管理</div>
		<ul id="ul_4">
			<li><a href="xinwentongzhi_add.jsp?lb=站内新闻" target='main'>新闻和制度添加</a></li>
			<li><a href="xinwentongzhi_list.jsp?lb=站内新闻" target='main'>新闻和制度查询</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(4);" id="nav_4">日程表信息管理</div>
		<ul id="ul_7">
			<li><a href="richengbiaoxinxi_add.jsp" target='main'>日程表信息添加</a></li>
			<li><a href="richengbiaoxinxi_list.jsp" target='main'>日程表信息查询</a></li>
		</ul>
		</div>
		

		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(5);" id="nav_5">社团相册管理</div>
		<ul id="ul_5">
			
			<li><a href="shetuanxiangce_list.jsp" target='main'>社团相册查询</a></li>
		</ul>
		</div>
		
		<div class="div_bigmenu">
		<div class="div_bigmenu_nav_down" onclick="javascript:lefttoggle(6);" id="nav_6">系统管理</div>
		<ul id="ul_6">
			
			<li><a href="youqinglianjie_add.jsp" target='main'>友情连接添加</a></li>
			<li><a href="youqinglianjie_list.jsp" target='main'>友情连接查询</a></li>
			<!--<li><a href="dx.jsp?lb=系统简介" target='main'>系统简介设置</a></li>-->
			
			<li><a href="dx.jsp?lb=系统公告" target='main'>系统公告设置</a></li>
			<li><a href="liuyanban_list.jsp" target='main'>留言管理</a></li>
		</ul>
		</div>
		
	</body>
</html>

