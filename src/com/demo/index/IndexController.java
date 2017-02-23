package com.demo.index;

import com.demo.common.result.Result;
import com.jfinal.core.Controller;
import com.jfinal.kit.JsonKit;

/**
 * IndexController
 */
public class IndexController extends Controller {
    public void index() {
        render("main.jsp");
    }
    
    //-----------登陆
    public void login(){
        String username = getPara("username");
        String password = getPara("password");
        if("admin".equals(username) && "admin".equals(password)){
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
