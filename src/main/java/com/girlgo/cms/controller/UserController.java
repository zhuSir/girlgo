package com.girlgo.cms.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.girlgo.cms.pojo.User;
import com.girlgo.cms.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	
	@RequestMapping("/register")
	public String register(User user,HttpServletRequest request){
		String requestIp = request.getRemoteHost();
		user.setLastLoginIp(requestIp);
		user.setRegisterIp(requestIp);
		User res = userService.createUser(user);
		if(res != null){
			return "success";
		}
		return "fail";
	}
	
	@RequestMapping("/login")
	public String login(User user,HttpServletRequest request){
		String requestIp = request.getRemoteHost();
		user.setLastLoginIp(requestIp);
		user.setRegisterIp(requestIp);
		String res = userService.login(user);
		return res;
	}
}
