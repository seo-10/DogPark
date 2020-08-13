package com.dogpark.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dogpark.dao.DogSaleDao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.CalendarDto;

public class DS_SelectDateService {
	public List<CalendarDto> SelectDate(String date){
		List<CalendarDto> calendarList = null;
		DogSaleDao dao= new DogSaleDao();
		calendarList=dao.DateSelectarticle(date);
			return calendarList;
	}
	public List<CalendarDto> SelectReservationcount(){
		List<CalendarDto> countList;
		DogSaleDao dao= new DogSaleDao();
		countList=dao.DateCountarticle();
			return countList;
	}

}
