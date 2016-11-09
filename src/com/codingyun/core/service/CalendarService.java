package com.codingyun.core.service;

import java.util.Date;
import java.util.List;

import com.codingyun.core.entity.bo.CalendarBo;
import com.codingyun.core.entity.vo.CalendarQueryVo;

public interface CalendarService {
	
	public List<CalendarBo> getCalendar(Date startTime, Date endTime) throws Exception;
	
	public int quickAdd(CalendarQueryVo calendar) throws Exception;
	
	public boolean quickUpdate(CalendarQueryVo calendar) throws Exception;
	
	public boolean quickDel(int calendarId) throws Exception;

}
