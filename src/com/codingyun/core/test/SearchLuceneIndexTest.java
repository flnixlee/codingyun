package com.codingyun.core.test;

import org.junit.Test;

import com.codingyun.core.util.LuceneSearchUtil;

public class SearchLuceneIndexTest {

//	@Test
//	public void test() throws Exception{
//		LuceneSearchUtil.searchLuceneIndex(
//				"F:\\lucene-4.10.2\\test", 
//				"titleIndex",   //查询标题的title所建立的索引
//				"阿里云ubuntu",         //索引中包含的关键字
//				5
//				);
//	}
	
	@Test
	public void testSpanSearch() throws Exception{
		LuceneSearchUtil.spanSearch(
				"F:\\lucene-4.10.2\\test", 
				"titleIndex",   //查询标题的title所建立的索引
				33,              //不同的关键字的间隔距离
				25,
				new String[]{"阿", "里"}         //索引中包含的关键字
				);
	}

}
