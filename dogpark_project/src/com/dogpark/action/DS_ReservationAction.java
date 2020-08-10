package com.dogpark.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.CalenderDto;
import com.dogpark.service.DS_ReservationService;

public class DS_ReservationAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String dnt = request.getParameter("DnT");
		String id = request.getParameter("id");
		
		CalenderDto dto = new CalenderDto();
		dto.setU_id(id);
		dto.setDate(dnt);
		DS_ReservationService ds_reservation = new DS_ReservationService();
		ds_reservation.Reservationinsert(dto);
		
		
		return null;
		
	}
}
