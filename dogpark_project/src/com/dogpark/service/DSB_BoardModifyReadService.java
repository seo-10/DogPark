package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.DogSaleDao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.Dogpark_dogsDto;

public class DSB_BoardModifyReadService {
	List<Dogpark_dogsDto> articleList = null;
	public List<Dogpark_dogsDto> DSB_modifyselectService(String dpd_name) {
		System.out.println("변경 출력 서비스부");
		DogSaleDao dao= new DogSaleDao();
		articleList=dao.DSB_modifyselectarticle(dpd_name);
		return articleList;
	}

}
