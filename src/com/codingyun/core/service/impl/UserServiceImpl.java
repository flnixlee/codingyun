package com.codingyun.core.service.impl;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.codingyun.core.constant.ConstantUtil;
import com.codingyun.core.dao.UserDao;
import com.codingyun.core.entity.User;
import com.codingyun.core.entity.bo.SysUserBo;
import com.codingyun.core.entity.vo.UserVo;
import com.codingyun.core.exception.ServiceException;
import com.codingyun.core.service.UploadFileService;
import com.codingyun.core.service.UserService;
import com.codingyun.core.util.DateUtil;
import com.codingyun.core.util.MD5Util;

@Service
public class UserServiceImpl implements UserService {
	
	Logger logger = Logger.getLogger(this.getClass());
	
	@Autowired
	private UserDao userDao;
	@Autowired
	private UploadFileService uploadFileService;

	@Override
	public User getUserByUserId(String userId) throws Exception {
		int id = 0;
		try{
			id = Integer.parseInt(userId);
		}catch (Exception e){
			logger.error("转换userid异常！");
			return null;
		}
		return userDao.getUserById(id);
	}

	@Override
	public User getUserByUserName(String userName) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 验证用户是否已经存在，包括用户名验证以及邮箱验证
	 * @return false 不存在；true 存在
	 * @user 王勇
	 * 2014年5月30日
	 */
	private void existUser(User user) throws Exception{
		User existUser = null;
		existUser = userDao.getUserByUserName(user.getUserName());
		if(existUser != null && existUser.getId() > 0){
			throw new ServiceException("用户名已存在！");
		}
		existUser = userDao.getUserByEmail(user.getUserEmail());
		if(existUser != null && existUser.getId() > 0){
			throw new ServiceException("用户邮箱已被注册！");
		}
	}

	@Override
	public User saveUser(User user) throws Exception {
		existUser(user);  //验证用户是否已经存在
		user.setMd5Pass();   //将密码转换为md5值
		return userDao.saveUser(user) ? userDao.getUserByEmail(user.getUserEmail()) : null;
	}

	@Override
	public boolean updateUser(User user) throws Exception {
		return userDao.updateUser(user, new String[]{"nickName","sex","collegeId","grade"});
	}

	@Override
	public User userLogin(User user, HttpServletRequest request) throws Exception {
		User existUser = null;
//		existUser = userDao.getUserByEmail(user.getUserEmail());
		existUser = userDao.getUserByUserName(user.getUserName());
		if(existUser == null){
			throw new ServiceException("用户不存在！");
		}
		if(!existUser.getUserPass().
				equalsIgnoreCase(MD5Util.GetMD5Code(user.getUserPass()))){
			throw new ServiceException("用户密码错误！");
		}
		logger.info("before login session:" + existUser.getSessionId());
		existUser.setLoginTime(new Date());
		existUser.updateSession();
		logger.info("after login session:" + existUser.getSessionId());
		userDao.updateUser(existUser, new String[]{"loginTime", "sessionId"});
		request.getSession().setAttribute("loginUser", existUser);
		return existUser;
	}

	@Override
	public User getUserBySessionId(String sessionId) throws Exception {
		return userDao.getUserBySessionId(sessionId);
	}
	
	@Override
	public User bindUser(User user) throws Exception {
		user.setUserName(user.getNickName());
		User queryUser = null;
//		if(user.getId() > 0){  //应试宝一代老用户登录时，绑定用户的微博信息等（已被废除）
//			return bindOldUserToken(user);
//		}
		//用户的uuid不会改变，是微博的uid
		if(user.getTokenType() == 1){  //新浪微博用户
			queryUser = userDao.getUserBySinaUuid(user.getSinaUuId());
		}else{  //QQ用户
			queryUser = userDao.getUserByQqUuid(user.getQqUuId());
		}
		if(queryUser != null && queryUser.getId() > 0){
			user.setId(queryUser.getId());
			if(user.getTokenType() == 1){
				userDao.updateUser(user, new String[]{"sinaToken", "sessionId", "loginTime"});
			}else{
				userDao.updateUser(user, new String[]{"qqToken", "sessionId", "loginTime"});
			}
		}else{
			userDao.saveUser(user);
		}
		return userDao.getUserBySessionId(user.getSessionId());
	}

	@Override
	public User fixUser(User user) throws Exception {
//		College college = collegeService.getCollegeByCollegeId(String.valueOf(user.getCollegeId()));
//		if(college != null && college.getId() > 0){
//			user.setCollegeName(college.getName());
//		}
		userDao.updateUser(user, new String[]{"nickName","sex","collegeId","collegeName","grade"});
		return userDao.getUserById(user.getId());
	}

	@Override
	public User changeUserIcon(HttpServletRequest request, UserVo userVo,
			User user) throws Exception {
		logger.info("修改用户头像:" + userVo);
		userVo.setId(user.getId());
		if(userVo.getId() > 0 
				&& !userVo.getUserIconFile().isEmpty() 
				&& userVo.getUserIconFile().getSize() > 0){
			uploadFile(request, userVo, user);
		}
		userDao.updateUser(user, new String[]{"avatar"});
		return user;
	}
	
	private void uploadFile(HttpServletRequest request, UserVo userVo, 
			User user) throws Exception{
		//如果用的是Tomcat服务器，则文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\WEB-INF\\upload\\文件夹中 
//		String realPath = request.getSession().getServletContext().getRealPath("/resource-file/day-word/"); 
		String realPath = ConstantUtil.DATA_REAL_PATH_USER_ICON;
		String path = "/resource-file/user/image/";
		MultipartFile multipartFile = userVo.getUserIconFile();
//		String filename = user.getId() + "@" + DateUtil.getTimeInMillis(new Date()) + multipartFile.getOriginalFilename();
		String fileName = MD5Util.GetMD5Code(user.getId() + 
				"" + 
				DateUtil.getTimeInMillis(new Date())) + 
				multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf("."));
		user.setAvatar(path + fileName);
		logger.info("upload comment audio url:" + realPath);
		uploadFileService.uploadFile(realPath, multipartFile, fileName);
	}

	@Override
	public SysUserBo sysAdminLogin(SysUserBo user, HttpServletRequest request, HttpServletResponse response) throws Exception {
		SysUserBo existUser = null;
		existUser = userDao.getSysUserByUserName(user.getUserName());
		if(existUser == null){
			throw new ServiceException("用户不存在！");
		}
		if(!existUser.getUserPass().
				equalsIgnoreCase(MD5Util.GetMD5Code(user.getUserPass()))){
			throw new ServiceException("用户密码错误！");
		}
//		logger.info("before login session:" + existUser.getSessionId());
//		existUser.setLoginTime(new Date());
//		existUser.updateSession();
		logger.info("after login session:" + existUser.getSessionId());
//		userDao.updateSysUser(existUser, new String[]{"loginTime", "sessionId"});
		request.getSession().setAttribute("sysUser", existUser);
		return existUser;
	}

	@Override
	public List<User> getTeacherList() throws Exception{
		return userDao.getTeacherList();
	}

	@Override
	public User registerUser(User user) throws Exception {
		existUser(user);  //验证用户是否已经存在
		user.setMd5Pass();   //将密码转换为md5值
		return userDao.saveUser(user) ? userDao.getUserByEmail(user.getUserEmail()) : null;
	}

}
