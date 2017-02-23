/**
 * add tab to main.jsp center region
 * 
 * @param title
 * @param url
 */
function addTab(title, url) {
	if ($('#tt').tabs('exists', title)) {
		$('#tt').tabs('select', title);
	} else {
		var content = '<iframe scrolling="auto" id=\"' + title + '\" frameborder="0"  src="' + url
				+ '" style="width:100%;height:100%;"></iframe>';
		var closable = true;
		$('#tt').tabs('add', {
			title : title,
			content : content,
			closable : closable
		});
	}
}

var optionWindow;
/**
 * 弹出操作窗口
 * 
 * @param title
 * @param option
 * @param url
 */
function showFormPage(title, option, url) {
	var iconCls;
	if ("edit" == option) {
		var row = $("#grid").datagrid('getSelected');
		if(null == row) {
			alert('请选择需要修改的记录！');
			return ;
		}
		url += "?id=" + row.id;
	}
	optionWindow = $('#dlg').window({
		title : title,
		href : url,
		width : '1000',
		height : '600',
		left : '100px',
		top : '70px',
		iconCls : 'icon-edit',
		modal : true,
		closed : true
		,
		onClose: function(){
			//销毁ue对象
			if (typeof ue != 'undefined') {  
				ue.destroy();  
			}  
		}
	}).window('open');
}

function submitForm() {
	$('#fm').form('submit', {
		dataType : 'json',
		success : function(data) {
			data = $.parseJSON(data);
			if (data.success) {
				parent.$.messager.show({
					title : '成功 ',
					msg : '提交表单成功'
				});
				optionWindow.window('close');
				$("#grid").datagrid('reload');
			} else {
				parent.$.messager.alert('警告', '提交表单失败!', 'error');
			}
		}
	});
}

function clearForm() {
	$('#fm').form('clear');
}

function closeWind() {
	$('#dlg').window('close');
}
function reloadDG() {
	$("#grid").datagrid('reload');
}  

function deleteRecord(url) {
	var row = $("#grid").datagrid('getSelected');
	if (null == row) {
		$.messager.alert('警告', '请选择需要删除的记录!', 'error');
		return false;
	}
	$.messager.confirm("操作提示", "您确定要删除记录吗？", function(data) {
		if (data) {
			$.ajax({
				type : "Post",
				data : {
					id : row.id
				},
				url : url,
				dataType : "json",
				success : function(data) {
					if (data.success) {
						$.messager.show({
							title : '成功 ',
							msg : '删除数据成功！'
						});
						$('#grid').datagrid('reload');
					} else {
						$.messager.alert('警告', '删除数据失败!', 'error');
					}
				},
				error : function(err) {
					$.messager.alert('警告', '删除数据失败!', 'error');
				}
			});
		}
	});
}

function showLoginWindow() {
	$("#dd").dialog({
		closable : false, // 右上角的关闭按钮，因为dialog框架关联的是window框架，window框架关联的是panel框架，所以该API是在panel框架中找到的
		title : "登陆界面", // dialog左上角的名称
		modal : true, // 模式化
		width : 300,
		height : 200,
		buttons : [// dialog右下角的按钮，以Json数组形式添加
		{
			text : "登录", // 按钮名称
			iconCls : "icon-save", // 按钮左侧显示的图片
			handler : function() {// 按钮点击之后出发的方法
				// JQuery的ajax异步后台提交
				loginFunc();
			}
		}]
	});
}

function loginFunc(){
	$('#loginForm').form('submit', {
		dataType : 'json',
		success : function(data) {
			data = $.parseJSON(data);
			if (data.success) {
				window.location.href = "/";
			} else {
				parent.$.messager.alert('警告', '登陆失败，请重新填写用户名密码!', 'error');
			}
		}
	});
}

function logout(){
	window.location.href="/logout";
}