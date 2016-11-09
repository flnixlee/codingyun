package com.codingyun.core.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.codingyun.core.dao.GeneralDao;
import com.codingyun.core.dao.UserDao;
import com.codingyun.core.entity.User;
import com.codingyun.core.entity.bo.SysUserBo;
import com.codingyun.core.util.StringUtil;

@Repository
public class UserDaoImpl implements UserDao {
	
	Logger logger = Logger.getLogger(this.getClass());
	
	@Autowired
	private GeneralDao generalDao;

	@Override
	public User getUserById(int userId) throws Exception{
		return generalDao.getEntity(User.class, userId);
	}

	@Override
	public User getUserByUserName(String userName) throws Exception{
		if(StringUtil.isEmpty(userName)){
			return null;
		}
		return generalDao.getEntity(User.class, " select * from user_base where userName = ? ", new Object[]{userName});
	}

	@Override
	public User getUserByEmail(String userEmail) throws Exception {
		if(StringUtil.isEmpty(userEmail)){
			return null;
		}
		return generalDao.getEntity(User.class, " select * from user_base where userEmail = ? ", new Object[]{userEmail});
	}

	@Override
	public boolean saveUser(User user) throws Exception{
		return generalDao.saveEntity(user);
	}

	@Override
	public boolean updateUser(User user, String... fileds) throws Exception{
		if(user == null){
			return false;
		}
		try {
			return generalDao.updateEntity(user, fileds);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public User getUserBySessionId(String sessionId) throws Exception {
		if(StringUtil.isEmpty(sessionId)){
			return null;
		}
		return generalDao.getEntity(User.class, " select * from user_base where sessionId = ? ", new Object[]{sessionId});
	}

	@Override
	public User getUserBySinaUuid(String sinaUuId) throws Exception {
		if(StringUtil.isEmpty(sinaUuId)){
			return null;
		}
		return generalDao.getEntity(User.class, " select * from user where sinaUuId = ? ", new Object[]{sinaUuId});
	}

	@Override
	public User getUserByQqUuid(String qqUuId) throws Exception {
		if(StringUtil.isEmpty(qqUuId)){
			return null;
		}
		return generalDao.getEntity(User.class, " select * from user where qqUuId = ? ", new Object[]{qqUuId});
	}

	@Override
	public SysUserBo getSysUserByEmail(String userEmail) throws Exception {
		if(StringUtil.isEmpty(userEmail)){
			return null;
		}
		return generalDao.getEntity(SysUserBo.class, " select * from sys_user where email = ? ", new Object[]{userEmail});
	}

	@Override
	public boolean updateSysUser(SysUserBo user, String... fileds)
			throws Exception {
		if(user == null){
			return false;
		}
		try {
			return generalDao.updateEntity(user, fileds);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public SysUserBo getSysUserByUserName(String userName) throws Exception {
		if(StringUtil.isEmpty(userName)){
			return null;
		}
		return generalDao.getEntity(SysUserBo.class, " select * from sys_user where userName = ? ", new Object[]{userName});
	}

	@Override
	public List<User> getTeacherList() throws Exception {
		return generalDao.getEntityList(User.class, 
				" select * from user where userType = ? " ,
				new Object[]{2});
	}


}
