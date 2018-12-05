package com.bluedot.dao;

import java.util.List;
import java.util.Set;

import org.apache.ibatis.annotations.Param;

import com.bluedot.po.User;

/** 
* @author 作者 zg
* @version 创建时间：2018年11月23日 下午9:16:10 
*/
public interface UserDao {

	User getByUserName(@Param("userName")String userName);

	Set<String> getRoles(@Param("userName")String userName);

	void adminSave(User user);

	void insertUser(User user);

	List<User> selectAllUser();

	Long checkUser(String userName);

	void deleteUser(int id);

	User selectById(int id);

	void updateUser(User user);
	
	
	
	

}
