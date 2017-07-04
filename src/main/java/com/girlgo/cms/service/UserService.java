package com.girlgo.cms.service;

import com.girlgo.cms.pojo.User;

public interface UserService {
	
	public User createUser(User user);

	public User login(User user);
	
	public User selectById(Integer id);
}
