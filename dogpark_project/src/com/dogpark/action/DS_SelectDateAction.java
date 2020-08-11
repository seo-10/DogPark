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
		ArrayList<String> arr=new ArrayList<String>();
		for(int i=1; i<=31; i++) {
		arr.add("2020-08-"+Integer.toString(i));
		}
		System.out.println(arr);
		String date="2020-08-12";
		List<CalendarDto> calendarList=new ArrayList<CalendarDto>();
		
		DS_SelectDateService selectDate = new DS_SelectDateService();
		calendarList=selectDate.SelectDate(date);
		request.setAttribute("calendarList", calendarList);
		ActionForward forward= new ActionForward();
		forward.setPath("dogpark_calendar.jsp");
		return forward;
		
	}
}
