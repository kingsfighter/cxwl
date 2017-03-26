package com.demo.index;

import com.demo.common.result.Result;
import com.jfinal.core.Controller;
import com.jfinal.kit.JsonKit;
import com.jfinal.kit.PropKit;

/**
 * IndexController
 */
public class IndexController extends Controller {
	
	private static final String USERNAME=PropKit.get("admin.username");
	private static final String PASSWORD=PropKit.get("admin.password");
	
    public void index() {
        render("main.jsp");
    }
    
    //-----------登陆
    public void login(){
        String username = getPara("username");
        String password = getPara("password");
        if(USERNAME.equals(username) && PASSWORD.equals(password)){
            setSessionAttr("login", true);
            Result result = new Result();
            renderText(JsonKit.toJson(result));
        }else{
            Result result = new Result();
            result.setSuccess(false);
            renderText(JsonKit.toJson(result));
        }
    }
    
    //-----------退出
    public void logout() {
        setSessionAttr("login", false);
        redirect("/");
    }
}
