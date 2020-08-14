package com.dogpark.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.CalendarDto;
import com.dogpark.service.DS_SelectDateService;

public class DS_SelectDateAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		DS_SelectDateService selectDate = new DS_SelectDateService();
//		String date1= request.getParameter("date");
//		System.out.println(date1);
		ArrayList<String> arr=new ArrayList<String>();
		
		for(int i=1; i<=9; i++) {
		arr.add("2020-08-0"+Integer.toString(i));
		}
		for(int i=10; i<=31; i++) {
			arr.add("2020-08-"+Integer.toString(i));
		 }
		System.out.println(arr);
		String date=arr.get(10);
		System.out.println(arr.get(11));
		
		
		
		List<CalendarDto> calendarList=new ArrayList<CalendarDto>();
		calendarList=selectDate.SelectDate(date);
		
		request.setAttribute("calendarList", calendarList);
		
		ActionForward forward= new ActionForward();
		forward.setPath("dogpark_calendar.jsp");
		return forward;
		
	}
}
