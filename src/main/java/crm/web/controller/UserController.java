package crm.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import crm.pojo.User;
import crm.service.UserService;
    //需要声明注解Controller层
@Controller
    //窄化路径
@RequestMapping("/admin/user")
public class UserController {
    //自动注入UserService
	@Autowired
	private UserService us;
	//index.jsp中  目的将来往服务器提交数据
	@RequestMapping(value="/login.action",method=RequestMethod.GET)
	public String login(){
	// WEB-INF/view/index.jsp 等同于内部转发
		return "index";
	}
	
	@RequestMapping(value = "/login.action",method = RequestMethod.POST)
	//validateLogin方法实现登录,跳转到项目主页
	public String validateLogin(Model model,HttpSession session, String username,String password) {
		/*
		ModelandView视图模型
			实现登录校验
			判断登录页面中输入的用户名密码在数据库中是否存在
			需要Controller层和service层进行连接
		 */
		User user = us.validate(username, password);
		if (user!=null) {
			
			session.setAttribute("login_user", user);
			return "admin";
			}else {
				model.addAttribute("errorMessage","用户名或者密码错误");
				return"index";
			}
		
		
	}
	
	
}
