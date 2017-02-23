package com.demo.front.index;

import com.jfinal.core.Controller;

/**
 * CaseController 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller
 * 中，养成好习惯，有利于大型项目的开发与维护
 */
public class FrontIndexController extends Controller {
	public void index() {
		render("index.html");
	}
	
}
