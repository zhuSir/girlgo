package com.girlgo.cms.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.girlgo.cms.common.MD5;
import com.girlgo.cms.dao.UserMapper;
import com.girlgo.cms.pojo.User;
import com.girlgo.cms.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper dao;
	
	@Override
	public User createUser(User user) {
		user.setLastLoginTime(new Date());
		user.setRegisterTime(new Date());
		dao.insertSelective(user);
		user.setPassword("");
		return user;
	}

	@Override
	public String login(User user) {
		String username = user.getUserName();
		username = username != null ? MD5.parseMD5(username):username;
		user = dao.selectByParams(user.getUserName(), user.getPassword(), user.getEmail());
		if(user != null){
			return "success";
		}
		return "fail";
	}

}
