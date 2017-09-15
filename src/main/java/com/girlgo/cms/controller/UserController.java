package com.girlgo.cms.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.girlgo.cms.pojo.User;
import com.girlgo.cms.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/to/register")
	public String toRegister(){
		return "/register";
	}
	
	@RequestMapping("/to/login")
	public String toLogin(){
		return "/login";
	}
	
	@RequestMapping("/register")
	public String register(User user,HttpServletRequest request,ModelMap map){
		String requestIp = request.getRemoteHost();
		user.setLastLoginIp(requestIp);
		user.setRegisterIp(requestIp);
		User res = userService.createUser(user);
		map.put("user", res);
		return "/register";
	}
	
	@RequestMapping("/login")
	public String login(User user,HttpServletRequest request,ModelMap map){
		String requestIp = request.getRemoteHost();
		user.setLastLoginIp(requestIp);
		user.setRegisterIp(requestIp);
		user = userService.login(user);
		String resStr = user == null ? "fail" : "success";
		map.put("user", resStr);
		request.getServletContext().setAttribute("user", user);
		if("fail".equals(resStr)){
			return "/login";
		}
		return "redirect:/note/to/list";
	}
}
