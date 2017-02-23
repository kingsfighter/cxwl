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
<title>新增新闻</title>

</head> 
<body>
	<div style="width:90%">
		<form id="fm" method="post" name="fm" action="news/add">
			<table cellpadding="5">
	    		<tr>
	    			<td>列表标题:</td>
	    			<td><input class="easyui-textbox" type="text" name="news.list_title" data-options="required:true" width=500></input></td>
	    		</tr>
	    		<tr>
	    			<td>新闻顺序:</td>
	    			<td><input class="easyui-numberbox" precision="0" type="text" name="news.news_order" data-options="required:true" width=500></input></td>
	    		</tr>
	    		<tr>
	    			<td>列表链接:</td>
	    			<td><input class="easyui-textbox" type="text" name="news.list_link"  width=500></input></td>
	    		</tr>
	    		<tr>
	    			<td>列表图片1:</td>
	    			<td>
	    			<input class="easyui-textbox" type="text" name="news.list_pic1_path" data-options="required:true" width=500></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>列表图片2:</td>
	    			<td>
	    			<input class="easyui-textbox" type="text" name="news.list_pic2_path" data-options="required:true" width=500></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>列表正文:</td>
	    			<td>
	    			<textarea id="" rows=5 name="news.list_content"  class="textarea easyui-validatebox" width=500></textarea>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>列表日期:</td>
	    			<td>
	    			<input class="easyui-datebox" type="text" name="news.list_date" data-options="formatter:myformatter,parser:myparser,required:true" width=500 ></input>
	    			</td>
	    			<script type="text/javascript">
						function myformatter(date){
							var y = date.getFullYear();
							var m = date.getMonth()+1;
							var d = date.getDate();
							return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
						}
						function myparser(s){
							if (!s) return new Date();
							var ss = (s.split('-'));
							var y = parseInt(ss[0],10);
							var m = parseInt(ss[1],10);
							var d = parseInt(ss[2],10);
							if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
								return new Date(y,m-1,d);
							} else {
								return new Date();
							}
						}
					</script>
	    		</tr>
	    		<tr>
	    			<td>正文标题:</td>
	    			<td>
	    			<input class="easyui-textbox" type="text" name="news.title" data-options="required:true" width=500></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>html title:</td>
	    			<td>
	    			<input class="easyui-textbox" type="text" name="news.html_title" data-options="required:true" width=500></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>html keywords:</td>
	    			<td>
	    			<input class="easyui-textbox" type="text" name="news.html_keywords" data-options="required:true" width=500></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>html description:</td>
	    			<td>
	    			<input class="easyui-textbox" type="text" name="news.html_desc" data-options="required:true" width=500></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>阅读数量:</td>
	    			<td>
	    			<input class="easyui-numberbox" precision="0" type="text" name="news.read_count" data-options="required:true" width=500></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>发布日期:</td>
	    			<td>
	    			<input class="easyui-datebox"  type="text" name="news.publish_date" data-options="formatter:myformatter,parser:myparser,required:true" width=500 ></input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>正文:</td>
	    			<td>
	    			<textarea id="content" name="news.content"  style="width:700px; height:300px;" ></textarea>
					<script type="text/javascript">
						var ue = UE.getEditor('content');
					</script>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>备注:</td>
	    			<td><textarea rows="10" cols="50" name="news.remark" width=500></textarea></td>
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