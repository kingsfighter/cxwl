<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.baidu.ueditor.ActionEnter" %>
<%
	request.setCharacterEncoding( "utf-8" );  
	response.setHeader("Content-Type" , "text/html");  
	   
	String rootPath = application.getRealPath( "/" );  
	   
	String action = request.getParameter("action");
	String result = new ActionEnter(request, rootPath).exec();
	if (action != null
			&& (action.equals("listfile") || action.equals("listimage"))) {
		rootPath = rootPath.replace("\\", "/");
		result = result.replaceAll(rootPath, "/").replaceAll("//", "/");
	}
	out.write(result);
%>