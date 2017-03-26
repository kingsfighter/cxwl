<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>创翔网络管理系统</title>
<link rel="stylesheet" type="text/css"
	href="../../js/jquery-easyui-1.4.4/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="../../js/jquery-easyui-1.4.4/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="../../js/jquery-easyui-1.4.4/demo/demo.css">
<script type="text/javascript"
	src="../../js/jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="../../js/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../js/main.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var login = $("#login").val();
		if("true" != login){
			showLoginWindow();
		}
	});
	
</script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false"
		style="height: 60px; background: #B3DFDA; padding: 10px">创翔网络管理系统</div>
	<input type="hidden" id="login"
		value="<%=session.getAttribute("login")%>"></input>
	<div data-options="region:'west',split:true,title:'菜单'"
		style="width: 150px; padding: 10px;">
		<div class="easyui-accordion" data-options="fit:true,border:false"
			style="overflow:scroll">
			<a href="javascript:void(0)" onclick="addTab('案例查询','/case')"
				class="easyui-linkbutton" style="width: 100%"
				data-options="iconCls:'icon-large-chaxun',size:'large',iconAlign:'top'">案例维护</a>
			<a href="javascript:void(0)" class="easyui-linkbutton"
				onclick="addTab('新闻查询','/news')" style="width: 100%"
				data-options="iconCls:'icon-large-xinli',size:'large',iconAlign:'top'">新闻维护</a>
			<a href="javascript:void(0)"
				onclick="addTab('帮助','/tkxt/showBangZhuPage')"
				class="easyui-linkbutton" style="width: 100%"
				data-options="iconCls:'icon-large-bangzhu',size:'large',iconAlign:'top'">帮助</a>
			<a href="javascript:void(0)" onclick="logout()"
				class="easyui-linkbutton" style="width: 100%"
				data-options="iconCls:'icon-large-tuichu ',size:'large',iconAlign:'top'">退出</a>
		</div>
	</div>

	<div data-options="region:'south',border:false"
		style="height: 50px; background: #A9FACD; padding: 10px;"></div>

	<div data-options="region:'center',title:' '">
		<div class="easyui-tabs"
			data-options="fit:true,border:false,plain:true" id="tt"></div>
	</div>

	<div id="dd">
		<form id="loginForm" method="POST" action="/login">
			<table>
				<tr>
					<th>用户名</th>
					<td><input name="username" type="text" /></td>
				</tr>
				<tr>
					<th>密码</th>
					<td><input name="password" type="password" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>