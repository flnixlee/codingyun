package com.codingyun.core.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codingyun.core.entity.User;
import com.codingyun.core.entity.bo.SysUserBo;
import com.codingyun.core.entity.vo.UserVo;

public interface UserService {
	
	/**
	 * 通过用户id获取用户信息
	 * @user 王勇
	 * 2014年5月28日
	 */
	public User getUserByUserId(String userId)throws Exception;
	
	/**
	 * 通过用户名获取用户信息
	 * @user 王勇
	 * 2014年5月28日
	 */
	public User getUserByUserName(String userName) throws Exception;
	
	/**
	 * 用户注册
	 * 1.验证用户名是否已存在
	 * 2.验证邮箱是否已存在
	 * @user 王勇
	 * 2014年5月28日
	 */
	public User saveUser(User user) throws Exception;
	
	/**
	 * 修改用户信息
	 * @user 王勇
	 * 2014年5月28日
	 */
	public boolean updateUser(User user) throws Exception;
	
	/**
	 * 用户登录
	 * @user 王勇
	 * 2014年5月30日
	 */
	public User userLogin(User user, HttpServletRequest request) throws Exception;
	/**
	 * 用户注册
	 * @user 王勇
	 * 2014年11月12日
	 */
	public User registerUser(User user) throws Exception;
	/**
	 * 系统管理员登录
	 * @user 王勇
	 * 2014年6月24日
	 */
	public SysUserBo sysAdminLogin(SysUserBo user, HttpServletRequest request, HttpServletResponse response) throws Exception;
	/**
	 * 获取教师列表
	 * @user 王勇
	 * 2014年7月9日
	 */
	public List<User> getTeacherList() throws Exception;
	
	/**
	 * 通过用户的sessionId获取用户信息
	 * @user 王勇
	 * 2014年6月7日
	 */
	public User getUserBySessionId(String sessionId) throws Exception;
	/**
	 * 绑定第三方社交网站的用户token等信息
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public User bindUser(User user) throws Exception;
	
	public User fixUser(User user) throws Exception;
	
	public User changeUserIcon(HttpServletRequest request, 
			UserVo userVo, User user) throws Exception;
	
}
