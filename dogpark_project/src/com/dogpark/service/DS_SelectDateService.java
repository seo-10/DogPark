package com.dogpark.service;

import java.util.List;

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

}
