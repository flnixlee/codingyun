package com.codingyun.core.dao.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.codingyun.core.dao.CalendarDao;
import com.codingyun.core.dao.GeneralDao;
import com.codingyun.core.entity.bo.CalendarBo;

@Repository
public class CalendarDaoImpl implements CalendarDao {
	
	@Autowired
	private GeneralDao generalDao;

	@Override
	public List<CalendarBo> getCalendar(Date startTime, Date endTime)
			throws Exception {
		return generalDao.getEntityList(CalendarBo.class, 
				" select * from xgcalendar where startTime < ? and endTime > ? ", 
				new Object[]{endTime, startTime});
	}

	@Override
	public int quickAdd(CalendarBo calendar) throws Exception {
//		return generalDao.saveEntityReturnKey(
//				"insert into `xgcalendar` (`subjectName`, `location`, `masterId`, `description`, `calendarType`, `startTime`, `endTime`, "
//				+ "`isAllDayEvent`, `hasAttachment`, `category`, `instanceType`, `attendees`, `attendeeNames`, `otherAttendee`, "
//				+ "`upAccount`, `upName`, `upTime`, `recurringRule`) "
//				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", 
//				new Object[]{calendar.getSubjectName(),calendar.getLocation(),calendar.getMasterId(),calendar.getDescription(),calendar.getCalendarType(),
//						calendar.getStartTime(),calendar.getEndTime(),calendar.getIsAllDayEvent(),calendar.getHasAttachment(),calendar.getCategory(),
//						calendar.getInstanceType(),calendar.getAttendees(),calendar.getAttendeeNames(),calendar.getOtherAttendee(),
//						calendar.getUpAccount(),calendar.getUpName(),calendar.getUpTime(),calendar.getRecurringRule()});
		return generalDao.saveEntityReturnKey(calendar);
	}

	@Override
	public boolean quickUpdate(CalendarBo calendar) throws Exception {
		return generalDao.updateEntity(
				" update xgcalendar set subjectName = ?, startTime = ?, endTime = ? where id = ? ", 
				new Object[]{
						calendar.getSubjectName(),
						calendar.getStartTime(),
						calendar.getEndTime(),
						calendar.getId()});
	}

	@Override
	public boolean quickDel(int calendarId) throws Exception {
		return generalDao.delEntityBySql(
				" delete from xgcalendar where id = ? ", new Object[]{calendarId});
	}

}
