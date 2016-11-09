package com.codingyun.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingyun.core.constant.ConstantUtil;
import com.codingyun.core.entity.vo.UploadDemoVo;
import com.codingyun.core.service.UploadDemoService;
import com.codingyun.core.service.UploadFileService;

@Service
public class UploadDemoServiceImpl implements UploadDemoService {
	
	@Autowired
	private UploadFileService uploadFileService;

	@Override
	public boolean uploadForm(UploadDemoVo demo) throws Exception {
		demo.validateFile();
		uploadFileService.uploadFile(
				ConstantUtil.DATA_REAL_PATH_DEMO_DEMOFILE, demo.getImgFile(), demo.getImgFile().getOriginalFilename());
		return true;
	}

}
