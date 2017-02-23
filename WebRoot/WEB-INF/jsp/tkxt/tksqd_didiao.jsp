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
<script type="text/javascript" src="../../../js/user/user.js"></script>
<script type="text/javascript" language="javascript"
	src="../../../js/My97DatePicker_now/WdatePicker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>探矿权地调</title>
</head>
<body>
	<div style="width:90%">
		<form id="fm" method="post" name="fm" action="didiao">
			<table cellpadding="5">
				<tr>
					<td colspan=6 align="center"
						style="font-weight:bold;font-size:20px;">探矿权申请</td>
				</tr>
				<tr>
					<td>项目名称:</td>
					<td><input type="hidden" name="tksqd.id" value="${tksqd.id }"></input>
						<input class="easyui-textbox" type="text" name="tksqd.xmmc"
						value="${tksqd.xmmc}" data-options="required:true"></input></td>
					<td>申请人:</td>
					<td><input class="easyui-textbox" type="text" name="tksqd.sqr"
						value="${tksqd.sqr}" data-options="required:true"></input></td>
					<td>勘察单位:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.kcdw" value="${tksqd.kcdw}"
						data-options="required:true"></input></td>
				</tr>
				<tr>
					<td>勘察资格证号:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.kczgzh" value="${tksqd.kczgzh}"
						data-options="required:true"></input></td>
					<td>勘查单位地址:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.kcdwdz" value="${tksqd.kcdwdz}"
						data-options="required:true"></input></td>
					<td>申请时间:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.sqsj" value="${tksqd.sqsj}"
						data-options="required:true"></input></td>
				</tr>

				<tr>
					<td colspan=6 align="center"
						style="font-weight:bold;font-size:20px;">基础信息</td>
				</tr>
				<tr>
					<td>调查面积:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.dcmj" data-options="required:true"></input></td>
					<td>地理位置:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.dlwz" data-options="required:true"></input></td>
					<td>申请年限:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.sqnx" data-options="required:true"></input></td>
				</tr>
				<tr>
					<td>工作任务及主要目的:</td>
					<td colspan=5><textarea rows="10" cols="50"
							name="tksqd.ddgzrwjzymd"></textarea></td>
				</tr>
				<tr>
					<td>主要实物工作量:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.zyswgzl" data-options="required:true"></input></td>
					<td>资金来源:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.zjly" data-options="required:true"></input></td>
					<td>勘察单位:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.ddkcdw" data-options="required:true"></input></td>
				</tr>
			</table>
		</form>
		<div style="text-align:center;padding:5px">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				onclick="submitForm()">提交申请</a> <a href="javascript:void(0)"
				class="easyui-linkbutton" onclick="clearForm()">重置</a>
		</div>
	</div>

</body>
</html>