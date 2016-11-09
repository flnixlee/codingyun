package com.codingyun.core.action.system;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingyun.core.entity.QueryCondition;

@Controller
@RequestMapping("/system/test")
public class SysTestController {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String getArticleList(HttpServletRequest request, QueryCondition queryCondition) throws Exception{
		return "system/question_img_href";
	}
	
	@RequestMapping(value = "getHashEncryptPage", method = RequestMethod.GET)
	public String getHashPage(HttpServletRequest request, QueryCondition queryCondition) throws Exception{
		return "system/hashEncryptPage";
	}

}
