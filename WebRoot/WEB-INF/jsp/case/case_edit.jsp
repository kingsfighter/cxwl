<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../../js/jquery-easyui-1.4.4/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../../../js/jquery-easyui-1.4.4/themes/icon.css">
<link rel="stylesheet" type="text/css" href="../../../js/jquery-easyui-1.4.4/demo/demo.css">
<link rel="stylesheet" href="../../../js/kindeditor/themes/default/default.css" />

<script type="text/javascript" src="../../../js/jquery-easyui-1.4.4/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../../js/ueditor/utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="../../../js/ueditor/utf8-jsp/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="../../../js/ueditor/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript" src="../../../js/main.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改案例</title>
<script type="text/javascript">
	var caseType = '${case.caseType}';
	if("0" == caseType) {
		$('#cc').combobox('setValue', 'PC端');
	} else {
		$('#cc').combobox('setValue', '移动端');
	}
</script>
</head> 
<body>
	<div style="width:90%">
		<form id="fm" method="post" name="fm" action="case/edit">
			<input type="hidden" value="${case.id }" name="case.id">
			<table cellpadding="5">
				<tr>
	    			<td>案例类型:</td>
	    			<td>
		    			<select name="case.case_type" data-options="required:true,editable:false,value:${case.caseType}" class="easyui-combobox">
							<option value="0">PC端</option>
							<option value="1">移动端</option>
						</select>
					</td>
	    		</tr>
	    		<tr>
	    			<td>案例标题:</td>
	    			<td><input class="easyui-textbox" type="text" name="case.title" data-options="required:true" width=500 value="${case.title }"></input></td>
	    		</tr>
	    		<tr>
	    			<td>案例顺序:</td>
	    			<td><input class="easyui-numberbox" precision="0" type="text" name="case.case_order" data-options="required:true" width=500 value="${case.caseOrder }"></input></td>
	    		</tr>
	    		<tr>
	    			<td>列表图片1:</td>
	    			<td><input class="easyui-textbox" type="text" name="case.list_pic1_path" data-options="required:true" value="${case.listPic1Path }" width=500></input></td>
	    		</tr>
	    		<tr>
	    			<td>列表图片2:</td>
	    			<td><input class="easyui-textbox" type="text" name="case.list_pic2_path" value="${case.listPic2Path }"  width=500></input></td>
	    		</tr>
	    		<tr>
	    			<td>html title:</td>
	    			<td>
	    			<input class="easyui-textbox" type="text" name="case.html_title" data-options="required:true" width=500 value="${case.htmlTitle }"></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>html keywords:</td>
	    			<td>
	    			<input class="easyui-textbox" type="text" name="case.html_keywords" data-options="required:true" width=500 value="${case.htmlKeywords }"></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>html description:</td>
	    			<td>
	    			<textarea id="" rows=5 name="case.html_desc"  class="textarea easyui-validatebox" width=500>${case.htmlDesc }</textarea>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>正文:</td>
	    			<td>
	    			<textarea id="content" name="case.content"  style="width:700px; height:300px;" >${case.content }</textarea>
					<script type="text/javascript">
						var ue = UE.getEditor('content');
					</script>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>备注:</td>
	    			<td><textarea rows="10" cols="50" name="case.remark" width=500>${case.remark }</textarea></td>
	    		</tr>
	    		
	    	</table>
		</form>
		<div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提 交</a>
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重 置</a>
	    </div>
	</div>

</body>
</html>