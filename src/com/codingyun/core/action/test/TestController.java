package com.codingyun.core.action.test;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingyun.core.entity.QueryCondition;
import com.codingyun.core.util.CreateLuceneIndex;

@Controller
@RequestMapping("/test")
public class TestController {
	
	/**
	 * 建立lucence索引
	 * @user coding云
	 * 2014年12月17日
	 */
	@RequestMapping(value = "createLuceneIndex", method = RequestMethod.GET)
	public void createLuceneIndex(HttpServletRequest request, QueryCondition queryCondition) throws Exception{
		CreateLuceneIndex.main(new String[]{});
	}
	
}
