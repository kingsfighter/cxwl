package com.demo.front.news;

import java.util.Date;

import com.demo.common.model.Case;
import com.demo.common.model.News;
import com.jfinal.core.Controller;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * CaseController 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller
 * 中，养成好习惯，有利于大型项目的开发与维护
 */
public class FrontNewsController extends Controller {
	private static final int PAGE_SIZE = PropKit.getInt("front.news.list.page.size");
	private static final String ID_STR = "id";
	
	/**
	 * 首页列表页面
	 */
	public void index() {
		Page<News> page = News.dao.paginate(getParaToInt("pageNumber", 1), PAGE_SIZE);
		setAttr("news",page);
		render("news.jsp");
	}
	
	/**
	 * 列表查询页面
	 */
	public void list() {
		Page<News> page = News.dao.paginate(getParaToInt("pageNumber", 1), PAGE_SIZE);
		setAttr("cases",page);
		render("news.jsp");
	}
	
	/**
	 * 获取详情页面
	 */
	public void detail(){
		int id = getParaToInt(ID_STR);
		News c = News.dao.findById(id);
		//访问新闻，新闻阅读次数加1
		c.setReadCount(c.getReadCount() + 1);
		c.update();
		
		setAttr("news",c);
		render("news-details.jsp");
	}
}
