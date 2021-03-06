package com.codingyun.core.util;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.codingyun.core.constant.ConstantUtil;

public class FileUtil {
	
	/**
	 * 转换spring的MultipartFile 到file
	 * @user 王勇
	 * 2014年6月23日
	 */
	public static File multipartToFile(MultipartFile multipart) throws IllegalStateException, IOException {
//		File tmpFile = new File(System.getProperty("java.io.tmpdir") + System.getProperty("file.separator") + 
//                 multipart.getOriginalFilename());
		File tmpFile = File.createTempFile("tmpFile", null);
		multipart.transferTo(tmpFile);
		return tmpFile;
	}
	/**
	 * 
	 * @return
	 */
	public static boolean validateImgFileType(String fileName){
		String fileType = fileName.substring(fileName.lastIndexOf(".")).toLowerCase();
		if(ConstantUtil.imgExpandedName.contains(fileType)){
			return true;
		}
		return false;
	}
	
//	public static boolean validateAudioFileType(String fileName){
//		String fileType = fileName.substring(fileName.lastIndexOf(".")).toLowerCase();
//		if(ConstantUtil.audioExpandedName.contains(fileType)){
//			return true;
//		}
//		return false;
//	}

}
