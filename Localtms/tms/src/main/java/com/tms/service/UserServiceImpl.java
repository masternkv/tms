package com.tms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tms.dao.UserDao;
import com.tms.model.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
    private UserDao dao;
	public User findById(int id) {
        return dao.findById(id);
    }
 
    public User findBySso(String sso) {
    	System.out.print("In user Service Impl"+dao.getClass().toString());
        return dao.findBySSO(sso);
    }
}
