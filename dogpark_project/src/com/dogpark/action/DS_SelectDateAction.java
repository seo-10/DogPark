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
		String date= request.getParameter("dateday");
		System.out.println(date);
		
		
		List<CalendarDto> calendarList=new ArrayList<CalendarDto>();
		calendarList=selectDate.SelectDate(date);
		
		request.setAttribute("calendarList", calendarList);
		
		ActionForward forward= new ActionForward();
		forward.setPath("selectdatedetail.jsp");
		return forward;
		
	}
}
