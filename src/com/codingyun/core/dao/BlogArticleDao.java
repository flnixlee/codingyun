package com.codingyun.core.dao;

import com.codingyun.core.entity.PageBean;
import com.codingyun.core.entity.QueryCondition;
import com.codingyun.core.entity.bo.BlogArticleBo;
import com.codingyun.core.entity.vo.BlogArticleVo;

public interface BlogArticleDao {
	
	public PageBean<BlogArticleVo> getArticleList(QueryCondition queryCondition) throws Exception;
	
	public PageBean<BlogArticleVo> getSysArticleList(QueryCondition queryCondition) throws Exception;
	
	public PageBean<BlogArticleVo> getTagArticleList(QueryCondition queryCondition, String tag) throws Exception;
	
	public PageBean<BlogArticleVo> getArticleList(int category, QueryCondition queryCondition) throws Exception;
	
	public boolean addArticle(BlogArticleBo article) throws Exception;
	
	public boolean updateArticle(BlogArticleBo article, String...updateFields) throws Exception;
	
	public boolean delArticle(int articleId) throws Exception;
	
	public BlogArticleVo getArticleById(int articleId) throws Exception;

}
