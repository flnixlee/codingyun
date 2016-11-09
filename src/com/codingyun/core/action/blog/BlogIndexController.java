package com.codingyun.core.action.blog;
//package com.zkyj.core.action.blog;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.apache.log4j.Logger;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import com.zkyj.core.action.BaseController;
//import com.zkyj.core.entity.PageBean;
//import com.zkyj.core.entity.QueryCondition;
//import com.zkyj.core.entity.bo.BlogArticleBo;
//import com.zkyj.core.service.BlogArticleService;
//
//@Controller
//@RequestMapping("/blog")
//public class BlogIndexController extends BaseController {
//	
//	private static Logger logger = Logger.getLogger(BlogIndexController.class);
//	
//	@Autowired
//	private BlogArticleService blogArticleService;
//	
//	/**
//	 * 博客主页
//	 * @user jack
//	 * 2014年8月6日
//	 */
//	@RequestMapping(value = "", method = RequestMethod.GET)
//	public String index(HttpServletRequest request , QueryCondition queryCondition){
//		PageBean<BlogArticleBo> articleBean = null;
//		try{
//			articleBean = blogArticleService.getArticleList(queryCondition);
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//		request.setAttribute("articleList", articleBean != null ? articleBean.getDatas() : null);
//		request.setAttribute("pageInfo", articleBean);
//		logger.info("get article list size:" + articleBean.getDatas().size());
//		return "blog/blog";
//	}
//
//	/**
//	 * 留下你的想法（用户留言本）
//	 * @user jack
//	 * 2014年8月6日
//	 */
//	@RequestMapping(value = "leaveYourMind", method = RequestMethod.GET)
//	public String leaveYourMind(HttpServletRequest request , QueryCondition queryCondition){
//		return "blog/leaveYourMind";
//	}
//}
