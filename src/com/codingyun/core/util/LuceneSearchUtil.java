package com.codingyun.core.util;

import java.io.File;
import java.io.IOException;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.spans.SpanNearQuery;
import org.apache.lucene.search.spans.SpanTermQuery;
import org.apache.lucene.store.FSDirectory;

public class LuceneSearchUtil {
	
	/**
	 * 跨度查询
	 * 根据关键字的词距查询，关键字必须是单词或者单个的汉字，不能查询单词里的个别字母
	 * @user 王勇
	 * 2014年12月23日
	 */
	public static void spanSearch(String indexPath, String field, int slop, int pageSize, String... queryString) throws Exception{
		if(queryString.length <= 0){
			return;
		}
		SpanTermQuery[] spanClauses = new SpanTermQuery[queryString.length];
		for(int i=0;i<queryString.length;i++){
			spanClauses[i] = new SpanTermQuery(new Term(field, queryString[i]));
		}
		SpanNearQuery query = new SpanNearQuery(spanClauses, slop, true);
		search(indexPath, pageSize, query);
	}
	
	/**
	 * 将关键字按字符拆分成一个个的字符，然后以任意组合的的形式查询索引
	 * @param indexPath 索引文件所在的目录
	 * @param field 要查询的索引字段，比如查询title还是查询content
	 * @param queryString 要在索引字段查询的关键字
	 * @param pageSize 每页条数
	 * @user 王勇
	 * 2014年12月18日
	 */
	public static void searchLuceneIndex(String indexPath, String field, String queryString, int pageSize) throws Exception{
		Analyzer analyzer = new StandardAnalyzer();
		QueryParser parser = new QueryParser(field,
				analyzer);
		if(StringUtil.isEmpty(queryString)){
			return;
		}
		Query query = parser.parse(queryString);
		search(indexPath, pageSize, query);
	}
	
	private static void search(String indexPath, int pageSize, Query query) throws Exception{
		IndexReader reader = DirectoryReader.open(FSDirectory.open(new File(
				indexPath)));
		IndexSearcher searcher = new IndexSearcher(reader);
		boolean raw = false;
		doPagingSearch(searcher, query, pageSize, raw);
		reader.close();
	}
	
	/**
	 * @param query 查询的关键字
	 * @param hitsPerPage 每页显示几条
	 * @user 王勇
	 * 2014年12月18日
	 */
	private static void doPagingSearch(
			IndexSearcher searcher, Query query, int pageSize, boolean raw) throws IOException {

		//获取5页的数据
		TopDocs results = searcher.search(query, 5 * pageSize);
		ScoreDoc[] hits = results.scoreDocs;

		int numTotalHits = results.totalHits;
		System.out.println("共有" + numTotalHits + "条匹配");

		int start = 0;
		int end = Math.min(numTotalHits, pageSize);
		for (int i = start; i < end; i++) {
			if (raw) { // output raw format
				System.out.println("doc=" + hits[i].doc + " score="
						+ hits[i].score);
				continue;
			}

			Document doc = searcher.doc(hits[i].doc);
			String articleTitle = doc.get("articleTitle");
			if (articleTitle != null) {
				if (articleTitle != null) {
					System.out.println((i + 1) + ". articleId: " + doc.get("articleId") + ", articleTitle: " + doc.get("articleTitle"));
				}
			} else {
				System.out.println((i + 1) + ". "
						+ "No path for this document");
			}

		}

	}

}
