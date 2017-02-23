<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../../js/jquery-easyui-1.4.4/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../../../js/jquery-easyui-1.4.4/themes/icon.css">
<link rel="stylesheet" type="text/css" href="../../../js/jquery-easyui-1.4.4/demo/demo.css">

<script type="text/javascript" src="../../../js/jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../../js/main.js"></script>
<script type="text/javascript" charset="utf-8" src="../../../js/ueditor/utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="../../../js/ueditor/utf8-jsp/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="../../../js/ueditor/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>案例维护</title>
<script type="text/javascript">
	$(function() {
		(function() {
			function on() {
				$(".window").css("z-index", "1001");
				$(".window-shadow").css("z-index", "900");
				$(".window-mask").css("z-index", "800");
			}
			;
			var config = {
				onOpen : on,
				onResize : on,
				onMove : on
			};
			$("#dlg").dialog(config);
		})();
	});
</script>
</head>
<body>
	<table id="grid" class="easyui-datagrid" style="width:80%;height:auto;" url="/news/list" toolbar="#tb" rownumbers="true" pagination="true" singleSelect="true">
		<thead>
			<tr>
				<th field="id" width="50">新闻ID</th>
				<th field="list_title" width="100">列表标题</th>
				<th field="list_date" width="100">列表日期</th>
				<th field="title" width="100">正文标题</th>
				<th field="html_title" width="200">html_title</th>
				<th field="read_count" width="200">阅读数量</th>
				<th field="publish_date" width="200">发布时间</th>
				<th field="created_date" width="200">创建时间</th>
				<th field="modified_date" width="200">修改时间</th>
				<th field="remark" width="200">备注</th>
			</tr>                          
		</thead>                           
		<tbody>                            
		</tbody>                           
	</table>
	<div id="tb">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="javascript:showFormPage('新增新闻','add','/news/showAddView')">增加</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="javascript:showFormPage('修改新闻','edit','/news/showEditView')">修改</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true" onclick="javascript:deleteRecord('/news/delete')">删除</a>
	</div>
	<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
		closed="true" buttons="#dlg-buttons"></div>
</body>
</html>