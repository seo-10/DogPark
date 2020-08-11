package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.CalendarDto;
import com.dogpark.service.DS_ReservationService;
import com.dogpark.service.DS_SelectDateService;

public class DS_SelectDateAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String date=request.getParameter("2018-08-12");
		List<CalendarDto> calendarList=new ArrayList<CalendarDto>();
		
		DS_SelectDateService selectDate = new DS_SelectDateService();
		calendarList=selectDate.SelectDate(date);
		request.setAttribute("calendarList", calendarList);
		ActionForward forward= new ActionForward();
		forward.setPath("dogpark_calendar.jsp");
		return forward;
		
	}
}
