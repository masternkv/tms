package com.tms.dao;

import org.springframework.transaction.annotation.Transactional;

import com.tms.model.User;
@Transactional
public interface UserDao {
	public User findById(int id);
    
   public  User findBySSO(String sso);
}
