package com.dogpark.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.CalendarDto;
import com.dogpark.service.DS_ReservationService;

public class DS_ReservationAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String redate = request.getParameter("redate");
		String retime = request.getParameter("retime");
		String id= request.getParameter("id");
		
		CalendarDto dto = new CalendarDto();
		dto.setDate(redate);
		dto.setTime(retime);
		dto.setU_id(id);
		System.out.println(id);
		DS_ReservationService ds_reservation = new DS_ReservationService();
		ds_reservation.Reservationinsert(dto);
		
		
		ActionForward forward= new ActionForward();
		forward.setPath("dogpark_calendar.jsp");
		return forward;
		
	}
}
