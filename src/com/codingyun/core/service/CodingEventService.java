package com.codingyun.core.service;

import java.util.List;

import com.codingyun.core.entity.vo.AlipayEventUserVo;

/**
 * coding活动
 * @author 王勇
 * 2015年5月15日
 */
public interface CodingEventService {
	
	/**
	 * 获取付款用户list
	 * @user 王勇
	 * 2015年5月15日
	 */
	public List<AlipayEventUserVo> getAlipayEventList() throws Exception;

}
