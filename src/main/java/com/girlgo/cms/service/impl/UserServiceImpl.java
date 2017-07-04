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
	public User login(User user) {
		String username = user.getUsername();
		username = username != null ? MD5.parseMD5(username):username;
		user = dao.selectByParams(user.getUsername(), user.getPassword(), user.getEmail());
		return user;
	}
	
	@Override
	public User selectById(Integer id) {
		User user = dao.selectByPrimaryKey(id);
		return user;
	}

}
