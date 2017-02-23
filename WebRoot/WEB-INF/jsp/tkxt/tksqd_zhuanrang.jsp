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
<title>探矿权转让</title>
</head>
<body>
	<div style="width:90%">
		<form id="fm" method="post" name="fm" action="zhuanrang">
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
					<td>转让申请人:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.zrsqr" data-options="required:true"></input></td>
					<td>地址:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.zrsqrdz" data-options="required:true"></input></td>
					<td>电话:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.zrsqrdh" data-options="required:true"></input></td>
				</tr>
				<tr>
					<td>开户银行:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.zrsqrkhyh" data-options="required:true"></input></td>
					<td>账号:</td>
					<td><input class="easyui-textbox" type="text" name="tksqd.zh"
						data-options="required:true"></input></td>
					<td>勘查工作主要进展情况:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.kcgzzyjzqk" data-options="required:true"></input></td>
				</tr>
				<tr>
					<td>受让人:</td>
					<td><input class="easyui-textbox" type="text" name="tksqd.srr"
						data-options="required:true"></input></td>
					<td>地址:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.srrdz" data-options="required:true"></input></td>
					<td>电话:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.srrdh" data-options="required:true"></input></td>
				</tr>
				<tr>
					<td>开户银行:</td>
					<td><input class="easyui-textbox" type="text"
						name="tksqd.srrkhyh" data-options="required:true"></input></td>
				</tr>
				<tr>
					<td>受让目的:</td>
					<td colspan=5><textarea rows="10" cols="50" name="tksqd.srmd"></textarea></td>
				</tr>
				<tr>
					<td>上级主管部门意见:</td>
					<td colspan=5><textarea rows="10" cols="50"
							name="tksqd.sjzgbmyj"></textarea></td>
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