<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="../../../js/jquery-easyui-1.4.4/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="../../../js/jquery-easyui-1.4.4/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="../../../js/jquery-easyui-1.4.4/demo/demo.css">
<script type="text/javascript"
	src="../../../js/jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript"
	src="../../../js/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../../js/main.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<script type="text/javascript">
	$(document).ready(function(){  
		 $('#tt').datagrid({
			 onClickRow: function(index, data) {
		            var row = $('#tt').datagrid('getSelected');
		            $("#selectedId").val(row.id);
			 },onLoadSuccess: function(data){
			        $("#selectedId").val("");
			    }
		 });
	}); 
	
	function search(){
		$('#tt').datagrid('load',{  
			sqdzt:$('#sqdzt').val() 
            }); 
	}
</script>
</head>
<body style="background-image:url(../../../img/1.jpg);">
	<div>
		<select id="sqdzt" name="sqdzt">
			<option value="">==请选择==</option>
			<option value="新立">新立</option>
			<option value="变更">变更</option>
			<option value="注销">注销</option>
			<option value="转让">转让</option>
			<option value="地调">地调</option>
			<option value="年检">年检</option>
		</select> &nbsp;&nbsp;&nbsp;&nbsp; <input type="button" value="查 询"
			onclick="search()">
	</div>
	<table id="tt" class="easyui-datagrid"
		style="width: 95%; height: auto;" singleSelect="true" url="/tkxt/list"
		rownumbers="true" pagination="true">
		<thead>
			<tr>
				<th field="id" width="80">申请单号</th>
				<th field="sqr" width="100">申请人</th>
				<th field="sqdzt" width="100">申请单状态</th>
				<th field="kcdw" width="150">勘查单位</th>
				<th field="kczgzh" width="200">勘查资格证号</th>
				<th field="kcdwdz" width="200">勘查单位地址</th>
				<th field="sqsj" width="100">申请时间</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<input type="text" style="display:none" id="selectedId"
		onclick="$('#tt').datagrid('reload')" />
</body>
</html>