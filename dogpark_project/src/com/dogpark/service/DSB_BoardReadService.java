package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.DogSaleDao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.Dogpark_dogsDto;

public class DSB_BoardReadService {
	List<Dogpark_dogsDto> articleList = null;
	DogSaleDao dao= new DogSaleDao();
	public List<Dogpark_dogsDto> readarticle(String dpd_name){
		articleList=dao.DSB_boardreadarticle(dpd_name);
		return articleList;
		
	}
}
