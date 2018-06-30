package com.tms.service;

import com.tms.model.User;

public interface UserService {
	public User findById(int id);
    
   public  User findBySso(String sso);
}
