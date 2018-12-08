package com.bluedot.service.impl;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bluedot.dao.UserDao;
import com.bluedot.po.UnitManage;
import com.bluedot.po.User;
import com.bluedot.service.UserService;



@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource
	private UserDao userDao;

	@Override
	public List<User> getGroupUser() {
		// TODO Auto-generated method stub
		return userDao.getGroupUser();
	}
	
	public User getByUserName(String userName) {
		return userDao.getByUserName(userName);
	}

	public Set<String> getRoles(String userName) {
		return userDao.getRoles(userName);
	}

	@Override
	public void adminSave(User user) {
       userDao.adminSave(user);	
	}

	@Override
	public void insertUser(User user) {
		userDao.insertUser(user);
		
	}

	@Override
	public List<User> selectAllUser() {
		// TODO Auto-generated method stub
		return userDao.selectAllUser();
	}

	@Override
	public boolean checkUser(String userName) {
		Long count=userDao.checkUser(userName);
		return count==0;
	}

	@Override
	public void deleteUser(int id) {
		userDao.deleteUser(id);
		
	}

	@Override
	public User selectById(int id) {
		
		return userDao.selectById(id);
	}

	@Override
	public void updateUser(User user) {
           userDao.updateUser(user);		
	}

	@Override
	public void insertUnit(UnitManage unitManage) {
          userDao.insertUnit(unitManage);		
	}

	@Override
	public List<UnitManage> selectAllUnit() {
		
		return userDao.selectAllUnit();
	}

	@Override
	public void deleteUnit(int id) {
		userDao.deleteUnit(id);
		
	}

	@Override
	public UnitManage selectUnitById(int id) {
	
		return userDao.selectUnitById(id);
	}

	@Override
	public void updateUnit(UnitManage unitManage) {
         userDao.updateUnit(unitManage);		
	}



	
	


}
