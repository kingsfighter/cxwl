package com.demo.common.model;

import com.demo.common.model.base.BaseCase;
import com.jfinal.plugin.activerecord.Page;

/**
 * Generated by JFinal.
 */
@SuppressWarnings("serial")
public class Case extends BaseCase<Case> {
	public static final Case dao = new Case();
	
	/**
	 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
	 */
	public Page<Case> paginate(int pageNumber, int pageSize) {
		if(pageNumber <= 0){
			pageNumber = 1;
		}
		return paginate(pageNumber, pageSize, "select *", "from t_case order by case_order asc, modified_date desc");
	}
	/**
	 * 根据casetype查找
	 * @param pageNumber
	 * @param pageSize
	 * @param caseType
	 * @return
	 */
	public Page<Case> paginateByCaseType(int pageNumber, int pageSize, int caseType) {
		if(pageNumber <= 0){
			pageNumber = 1;
		}
		return paginate(pageNumber, pageSize, "select *",
				"from t_case where case_type = " + caseType
						+ " order by case_order asc, modified_date desc");
	}
}
