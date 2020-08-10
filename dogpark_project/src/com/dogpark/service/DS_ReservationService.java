package com.dogpark.service;

import com.dogpark.dao.DogSaleDao;
import com.dogpark.dto.CalendarDto;

public class DS_ReservationService {
	public void Reservationinsert(CalendarDto dto){
			DogSaleDao dao= new DogSaleDao();
			dao.ReservationInsertarticle(dto);
	}

}
