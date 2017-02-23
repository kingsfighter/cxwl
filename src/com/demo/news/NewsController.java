package com.demo.news;

import java.util.Date;

import com.demo.common.model.News;
import com.demo.common.result.Result;
import com.demo.util.EasyuiUtil;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.kit.JsonKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * NewsController 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller
 * 中，养成好习惯，有利于大型项目的开发与维护
 */
@Before(NewsInterceptor.class)
public class NewsController extends Controller {
	public void index() {
		render("news_list.jsp");
	}

	public void list() {
		Page<News> page = null;
		page = News.dao.paginate(getParaToInt(0, 1), 10);
		renderJson(EasyuiUtil.adapterEasyuiPage(page));
	}

	public void showListPage() {
		render("news_list.jsp");
	}

	// -----------新增
	public void showAddView() {
		render("news_add.jsp");
	}

	public void add() {
		News newNews = getModel(News.class);
		newNews.setCreatedDate(new Date());
		newNews.setModifiedDate(new Date());
		newNews.save();
		renderText(JsonKit.toJson(new Result()));
	}

	// -----------修改
	public void showEditView() {
		int id = getParaToInt("id");
		News c = News.dao.findById(id);
		setAttr("news", c);
		render("news_edit.jsp");
	}

	public void edit() {
		News newNews = getModel(News.class);
		newNews.setModifiedDate(new Date());
		newNews.update();
		renderText(JsonKit.toJson(new Result()));
	}

	// -----------删除
	public void delete() {
		int id = getParaToInt("id");
		News.dao.deleteById(id);
		renderText(JsonKit.toJson(new Result()));
	}

}
