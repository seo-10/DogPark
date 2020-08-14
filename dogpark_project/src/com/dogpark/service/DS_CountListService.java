package com.dogpark.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dogpark.dao.DogSaleDao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.CalendarDto;

public class DS_CountListService {
	public List<CalendarDto> SelectReservationcount(){
		List<CalendarDto> countList;
		DogSaleDao dao= new DogSaleDao();
		countList=dao.DateCountarticle();
			return countList;
	}

}
