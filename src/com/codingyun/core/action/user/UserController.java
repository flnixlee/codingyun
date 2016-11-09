package com.codingyun.core.action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.codingyun.core.action.BaseController;
import com.codingyun.core.entity.JsonResult;
import com.codingyun.core.entity.QueryCondition;
import com.codingyun.core.entity.User;
import com.codingyun.core.exception.ServiceException;
import com.codingyun.core.service.UserService;
import com.google.gson.Gson;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {
	
	@Autowired
	UserService userService;
	
	/**
	 * 用户登录
	 * @user 王勇
	 * 2014年11月10日
	 */
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String index(HttpServletRequest request, QueryCondition queryCondition){
		return "user/login";
	}
	
	/**
	 * 用户注册
	 * @user 王勇
	 * 2014年11月10日
	 */
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register(HttpServletRequest request, QueryCondition queryCondition){
		return "user/register";
	}
	
	/**
	 * 用户登录接口
	 * @user 王勇
	 * 2014年11月12日
	 */
	@RequestMapping(value = "loginCheck", method = RequestMethod.POST)
	@ResponseBody 
	public String loginCheck( @RequestBody User user, HttpServletRequest request, HttpServletResponse response){
		logger.info("user login info:" + user.toString());
		boolean flag = false;
		String errorMessage = "用户登录失败";
		JsonResult<User> jsonResult = new JsonResult<User>();
		try {
			user = userService.userLogin(user, request);
			flag = true;
		}catch (ServiceException serviceE){
			logger.error("user login failed!", serviceE);
			errorMessage = serviceE.getMessage();
		}catch (Exception e) {
		logger.error("user login failed! ", e);
		}
		jsonResult.setResultCode(flag ? 0 : 1);
		jsonResult.setResultMessage(flag ? "用户登录成功" : errorMessage);
		jsonResult.setData(user);
		return new Gson().toJson(jsonResult);
	}
	
	/**
	 * 用户注册
	 * @author 王勇
	 * @date 2014年11月12日
	 */
	@RequestMapping(value = "register", method = RequestMethod.POST)
	@ResponseBody 
	public String register(HttpServletRequest request, @RequestBody User user){
		logger.info("用户注册信息：" + user.toString());
		boolean flag = false;
		String errorMessage = "用户注册失败";
		JsonResult<User> jsonResult = new JsonResult<User>();
		try {
			user = userService.registerUser(user);
			flag = true;
		}catch (ServiceException serviceE){
			logger.error("用户注册失败！", serviceE);
			errorMessage = serviceE.getMessage();
		}catch (Exception e) {
			logger.error("用户注册失败！ ", e);
		}
		jsonResult.setResultCode(flag ? 0 : 1);
		jsonResult.setResultMessage(flag ? "用户注册成功" : errorMessage);
		jsonResult.setData(user);
		return new Gson().toJson(jsonResult);
	}

}
