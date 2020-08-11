package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.CalendarDto;
import com.dogpark.service.DS_ReservationService;
import com.dogpark.service.DS_SelectDateService;

public class DS_ReservationAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String redate = request.getParameter("redate");
		String retime = request.getParameter("retime");
		String id= request.getParameter("id");
		List<CalendarDto> calendarList=new ArrayList<CalendarDto>();
		CalendarDto dto = new CalendarDto();
		dto.setDate(redate);
		dto.setTime(retime);
		dto.setU_id(id);
		System.out.println(id);
		DS_ReservationService ds_reservation = new DS_ReservationService();
		ds_reservation.Reservationinsert(dto);
		
		DS_SelectDateService selectDate = new DS_SelectDateService();
		calendarList=selectDate.SelectDate();
		request.setAttribute("calendarList", calendarList);
		ActionForward forward= new ActionForward();
		forward.setPath("dogpark_calendar.jsp");
		return forward;
		
	}
}
