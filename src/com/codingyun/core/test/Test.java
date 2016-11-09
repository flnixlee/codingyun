package com.codingyun.core.test;

import com.codingyun.core.util.DateUtil;

public class Test {
	
	public static void main(String[] args){
		/*
		int a = 2048;
		int b = 300;
		System.out.println(new java.text.DecimalFormat("#.0000").format((double)a/(double)b));
//		File tmp = new File("F:/test/14.amr");
//		System.out.println(tmp.exists());
//		System.out.println(AudioUtil.getDurationOfAmr(tmp));
       try {
    		String str = FileUtils.readFileToString(new File("F:/test/model.html"));
    		String returnStr = str.replace("<div id=\"content\">", "<div id=\"handout\">" + "<span style=\"background-color:#E56600;\"><strong><em>KindEditor撒旦法撒旦法撒旦法阿萨德发生地方</em></strong></span>");
    		File file = new File("F:"+File.separator+"test"+File.separator+"handout.html"); 
	        FileUtils.writeStringToFile(file, returnStr);  
//	    	    FileUtils.forceDeleteOnExit(file);   //删除已存在的文件
		} catch (IOException e) {
			e.printStackTrace();
		} 
		*/
		System.out.println(DateUtil.getDateFromMillis(1411920000000L));
		System.out.println(DateUtil.getDateFromMillis(1412524799000L));
	}
	

}
