package com.bluedot.service;

import java.util.List;
import java.util.Set;

import com.bluedot.po.UnitManage;
import com.bluedot.po.User;

public interface UserService {

	public User getByUserName(String userName);
	
	
	public Set<String> getRoles(String userName);


	public void adminSave(User user);


	public void insertUser(User user);


	public List<User> selectAllUser();


	public boolean checkUser(String userName);


	public void deleteUser(int id);


	public User selectById(int id);


	public void updateUser(User user);


	public void insertUnit(UnitManage unitManage);


	public List<UnitManage> selectAllUnit();


	public void deleteUnit(int id);


	public UnitManage selectUnitById(int id);


	public void updateUnit(UnitManage unitManage);

	public List<User> getGroupUser(); 

}
