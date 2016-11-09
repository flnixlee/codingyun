package com.codingyun.core.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingyun.core.dao.CalendarDao;
import com.codingyun.core.entity.bo.CalendarBo;
import com.codingyun.core.entity.vo.CalendarQueryVo;
import com.codingyun.core.service.CalendarService;
import com.codingyun.core.util.DateUtil;

@Service
public class CalendarServiceImpl implements CalendarService {
	
	@Autowired
	private CalendarDao calendarDao;

	@Override
	public List<CalendarBo> getCalendar(Date startTime, Date endTime)
			throws Exception {
		return calendarDao.getCalendar(startTime, endTime);
	}

	@Override
	public int quickAdd(CalendarQueryVo calendar) throws Exception {
		CalendarBo bo = new CalendarBo(calendar.getCalendarTitle(), 
				DateUtil.StringToDate(calendar.getCalendarStartTime(), "yyyy-MM-dd HH:mm"), 
				DateUtil.StringToDate(calendar.getCalendarEndTime(), "yyyy-MM-dd HH:mm"), 
				calendar.getIsAllDayEvent(), "admin");
		return calendarDao.quickAdd(bo);
	}

	@Override
	public boolean quickUpdate(CalendarQueryVo calendar) throws Exception {
		CalendarBo bo = new CalendarBo(calendar.getCalendarId(), 
				DateUtil.StringToDate(calendar.getCalendarStartTime(), "yyyy-MM-dd HH:mm"), 
				DateUtil.StringToDate(calendar.getCalendarEndTime(), "yyyy-MM-dd HH:mm"));
		return calendarDao.quickUpdate(bo);
	}

	@Override
	public boolean quickDel(int calendarId) throws Exception {
		return calendarDao.quickDel(calendarId);
	}

}
