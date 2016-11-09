package com.codingyun.core.action.system;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.codingyun.core.action.BaseController;
import com.codingyun.core.entity.CalendarJsonResult;
import com.codingyun.core.entity.bo.CalendarBo;
import com.codingyun.core.entity.vo.CalendarQueryVo;
import com.codingyun.core.exception.ServiceException;
import com.codingyun.core.service.CalendarService;
import com.codingyun.core.util.DateUtil;
import com.codingyun.core.util.StringUtil;
import com.google.gson.Gson;

@Controller
@RequestMapping("/system/calendar")
public class CalendarController extends BaseController{
	
	@Autowired
	private CalendarService calendarService;
	
	@Override
	protected void ininBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf,true));
	}
	
	private static Logger logger = LoggerFactory.getLogger(CalendarController.class);
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(HttpServletRequest request){
		logger.info("日历控件");
		return "system/calendar";
	}
	
	/**
	 * 查询calendar
	 * @user 王勇
	 * 2014年9月22日
	 */
	@RequestMapping(value = "getCalendar", method = RequestMethod.POST)
	@ResponseBody
	public Object getCalendar(HttpServletRequest request, CalendarQueryVo calendar){
		logger.info("getCalendar info:" + calendar.toString());
		boolean flag = false;
		String errorMessage = "查询calendar成功!";
		List<CalendarBo> calendarList = new ArrayList<CalendarBo>();
		CalendarJsonResult result = new CalendarJsonResult();
		Date startTime = null;
		Date endTime = null;
		if("day".equalsIgnoreCase(calendar.getViewtype())){
			startTime = DateUtil.getStartTime(calendar.getShowdate());
			endTime = DateUtil.getEndTime(calendar.getShowdate());
		}
		if("week".equalsIgnoreCase(calendar.getViewtype())){
			startTime = DateUtil.getWeekStart(calendar.getShowdate());
			endTime = DateUtil.getWeekEnd(calendar.getShowdate());
		}
		if("month".equalsIgnoreCase(calendar.getViewtype())){
			startTime = DateUtil.getMonthStart(calendar.getShowdate());
			endTime = DateUtil.getMonthEnd(calendar.getShowdate());
		}
		if(startTime == null || endTime == null){
			result.setError("查询日期错误！");
			return new Gson().toJson(result);
		}
		try{
			calendarList = calendarService.getCalendar(startTime, endTime);
			flag = true;
		}catch (ServiceException serviceE){
			logger.error("getCalendar failed!" , serviceE);
			errorMessage = serviceE.getMessage();
		}catch (Exception e){
			logger.error("getCalendar failed!" , e);
			errorMessage = "查询calendar失败!";
		}
		if(!flag){
			result.setError(errorMessage);
			return new Gson().toJson(result);
		}
		result.setStart(DateUtil.dateToString(startTime, "yyyy,MM,dd,HH,mm"));
		result.setEnd(DateUtil.dateToString(endTime, "yyyy,MM,dd,HH,mm"));
		return getCalendarList(result, calendarList);
	}
	
	private String getCalendarList(CalendarJsonResult result, List<CalendarBo> calendarList){
		List<Object[]> resultList = new ArrayList<Object[]>();
		for(CalendarBo calendarBo : calendarList){
			Object[] calendarSet = new Object[11];
			calendarSet[0] = String.valueOf(calendarBo.getId());
			calendarSet[1] = calendarBo.getSubjectName();
			calendarSet[2] = DateUtil.dateToString(calendarBo.getStartTime(), "yyyy,MM,dd,HH,mm");
			calendarSet[3] = DateUtil.dateToString(calendarBo.getEndTime(), "yyyy,MM,dd,HH,mm");
			calendarSet[4] = calendarBo.getIsAllDayEvent() == 1 ? "1" : "0";
			calendarSet[5] = 0;
			calendarSet[6] = 1;
			calendarSet[7] = "" + (int)(Math.random()*20 + 1);  //该位代表样式css主题
			calendarSet[8] = 1;
			calendarSet[9] = StringUtil.isEmpty(calendarBo.getAttendees()) ? "" : calendarBo.getAttendees();
			calendarSet[10] = StringUtil.isEmpty(calendarBo.getLocation()) ? "" : calendarBo.getLocation();
			resultList.add(calendarSet);
		}
		result.setEvents(resultList);
		return new Gson().toJson(result);
	}
	
	/**
	 * 新增calendar
	 * @user 王勇
	 * 2014年9月23日
	 */
	@RequestMapping(value = "quickAdd", method = RequestMethod.POST)
	@ResponseBody
	public Object quickAdd(HttpServletRequest request, CalendarQueryVo calendar){
		logger.info("quickAdd info:" + calendar.toString());
		boolean flag = false;
		String errorMessage = "新增calendar成功!";
		int insertId = 0;
		Map<String, Object> returnMap = new HashMap<String, Object>();
		try{
			insertId = calendarService.quickAdd(calendar);
			flag = true;
		}catch (ServiceException serviceE){
			logger.error("quickAdd failed!" , serviceE);
			errorMessage = serviceE.getMessage();
		}catch (Exception e){
			logger.error("quickAdd failed!" , e);
			errorMessage = "新增calendar失败!";
		}
		returnMap.put("IsSuccess", flag);
		returnMap.put("Msg", errorMessage);
		returnMap.put("Data", insertId);
		return new Gson().toJson(returnMap);
	}
	
	/**
	 * 修改calendar
	 * @user 王勇
	 * 2014年9月23日
	 */
	@RequestMapping(value = "quickUpdate", method = RequestMethod.POST)
	@ResponseBody
	public Object quickUpdate(HttpServletRequest request, CalendarQueryVo calendar){
		logger.info("quickUpdate info:" + calendar.toString());
		boolean flag = false;
		String errorMessage = "新增calendar成功!";
		Map<String, Object> returnMap = new HashMap<String, Object>();
		try{
			flag = calendarService.quickUpdate(calendar);
			flag = true;
		}catch (ServiceException serviceE){
			logger.error("quickUpdate failed!" , serviceE);
			errorMessage = serviceE.getMessage();
		}catch (Exception e){
			logger.error("quickUpdate failed!" , e);
			errorMessage = "新增calendar失败!";
		}
		returnMap.put("IsSuccess", flag);
		returnMap.put("Msg", errorMessage);
		return new Gson().toJson(returnMap);
	}
	
	/**
	 * 修改calendar
	 * @user 王勇
	 * 2014年9月23日
	 */
	@RequestMapping(value="updatePage/{namePart:[\\d]+}")
	public Object updatePage(HttpServletRequest request, @PathVariable int namePart){
		logger.info("namePart: " + namePart );
		return "system/login";
	}
	
	/**
	 * 删除calendar
	 * @user 王勇
	 * 2014年9月23日
	 */
	@RequestMapping(value = "quickDel", method = RequestMethod.POST)
	@ResponseBody
	public Object quickDel(HttpServletRequest request, CalendarQueryVo calendar){
		logger.info("quickDel info:" + calendar.toString());
		boolean flag = false;
		String errorMessage = "删除calendar成功!";
		Map<String, Object> returnMap = new HashMap<String, Object>();
		try{
			flag = calendarService.quickDel(calendar.getCalendarId());
		}catch (ServiceException serviceE){
			logger.error("quickDel failed!" , serviceE);
			errorMessage = serviceE.getMessage();
		}catch (Exception e){
			logger.error("quickDel failed!" , e);
			errorMessage = "删除calendar失败!";
		}
		returnMap.put("IsSuccess", flag);
		returnMap.put("Msg", errorMessage);
		return new Gson().toJson(returnMap);
	}

}
