package com.demo.front.cases;

import com.demo.common.model.Case;
import com.jfinal.core.Controller;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.Page;

/**
 * CaseController 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller
 * 中，养成好习惯，有利于大型项目的开发与维护
 */
public class FrontCaseController extends Controller {
	private static final int PAGE_SIZE = PropKit.getInt("front.case.list.page.size");
	private static final String ID_STR = "id";
	
	private static final Integer CASE_TYPE_PC = 0;
	private static final Integer CASE_TYPE_MOBILE = 1;
	
	/**
	 * 首页列表页面
	 */
	public void index() {
		Page<Case> page = Case.dao.paginate(getParaToInt("pageNumber", 1), PAGE_SIZE);
		setAttr("cases",page);
		render("case.jsp");
	}
	
	/**
	 * 列表查询页面
	 */
	public void list() {
		Integer caseType = CASE_TYPE_PC;
		try {
			caseType = getParaToInt("caseType");
		} catch (Exception e) {
			redirect("/front/case/");
			return ;
		}
		Page<Case> page = Case.dao.paginateByCaseType(getParaToInt("pageNumber", 1), PAGE_SIZE, caseType);
		setAttr("cases",page);
		setAttr("caseType",caseType);
		render("case.jsp");
	}
	
	/**
	 * 获取详情页面
	 */
	public void detail(){
		int id = getParaToInt(ID_STR);
		Case c = Case.dao.findById(id);
		setAttr("case",c);
		//PC端
		if(CASE_TYPE_PC.equals(c.getCaseType())){
			render("case-p-details.jsp");
		}
		//移动端
		else{
			render("case-t-details.jsp");
		}
	}
}
