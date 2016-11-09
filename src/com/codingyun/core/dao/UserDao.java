package com.codingyun.core.dao;

import java.util.List;

import com.codingyun.core.entity.User;
import com.codingyun.core.entity.bo.SysUserBo;

public interface UserDao {
	
	public User getUserById(int userId) throws Exception;
	
	public User getUserByUserName(String userName) throws Exception;
	
	public User getUserByEmail(String userEmail) throws Exception;
	
	public boolean saveUser(User user) throws Exception;
	
	public boolean updateUser(User user, String... fileds) throws Exception;
	
	/**
	 * 通过用户的sessionId获取用户信息
	 * @user 王勇
	 * 2014年6月7日
	 */
	public User getUserBySessionId(String sessionId) throws Exception;
	
	public User getUserBySinaUuid(String sinaUuId) throws Exception;
	
	public User getUserByQqUuid(String qqUuId) throws Exception;
	/**
	 * 根据邮箱获取系统管理员信息
	 * @user 王勇
	 * 2014年6月24日
	 */
	public SysUserBo getSysUserByEmail(String userEmail) throws Exception;
	
	public SysUserBo getSysUserByUserName(String userName) throws Exception;
	
	public boolean updateSysUser(SysUserBo user, String... fileds) throws Exception;
	
	public List<User> getTeacherList() throws Exception;

}
