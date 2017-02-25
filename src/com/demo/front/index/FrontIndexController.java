package com.demo.front.index;

import com.demo.common.model.Case;
import com.demo.common.model.News;
import com.jfinal.core.Controller;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * CaseController 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller
 * 中，养成好习惯，有利于大型项目的开发与维护
 */
public class FrontIndexController extends Controller {
	
	private static final int CASE_PAGE_SIZE = PropKit.getInt("front.case.list.page.size");
	private static final int NEWS_PAGE_SIZE = PropKit.getInt("front.news.list.page.size");
	public void index() {
		
		Page<Case> casePage = Case.dao.paginate(1, CASE_PAGE_SIZE);
		setAttr("cases",casePage);
		
		Page<News> newsPage = News.dao.paginate(1, NEWS_PAGE_SIZE);
		setAttr("news",newsPage);
		
		render("index.jsp");
	}
	
}
