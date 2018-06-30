package com.tms.dao;

import com.tms.model.User;

public interface UserDao {
	public User findById(int id);
    
   public  User findBySSO(String sso);
}
