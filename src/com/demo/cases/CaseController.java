package com.demo.cases;

import java.util.Date;

import com.demo.common.model.Case;
import com.demo.common.result.Result;
import com.demo.util.EasyuiUtil;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.kit.JsonKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * CaseController 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller
 * 中，养成好习惯，有利于大型项目的开发与维护
 */
@Before(CaseInterceptor.class)
public class CaseController extends Controller {
	public void index() {
		render("case_list.jsp");
	}

	public void list() {
		Page<Case> page = null;
		page = Case.dao.paginate(getParaToInt(0, 1), 10);
		renderJson(EasyuiUtil.adapterEasyuiPage(page));
	}

	public void showListPage() {
		render("case_list.jsp");
	}

	// -----------新增
	public void showAddView() {
		render("case_add.jsp");
	}

	public void add() {
		Case newCase = getModel(Case.class);
		newCase.setCreatedDate(new Date());
		newCase.setModifiedDate(new Date());
		newCase.save();
		renderText(JsonKit.toJson(new Result()));
	}

	// -----------修改
	public void showEditView() {
		int id = getParaToInt("id");
		Case c = Case.dao.findById(id);
		setAttr("case", c);
		render("case_edit.jsp");
	}

	public void edit() {
		Case newCase = getModel(Case.class);
		newCase.setModifiedDate(new Date());
		newCase.update();
		renderText(JsonKit.toJson(new Result()));
	}

	// -----------删除
	public void delete() {
		int id = getParaToInt("id");
		Case.dao.deleteById(id);
		renderText(JsonKit.toJson(new Result()));
	}

}
