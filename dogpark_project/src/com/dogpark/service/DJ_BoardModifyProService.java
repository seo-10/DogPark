package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.Dao;
import com.dogpark.dto.DogjarangDto;


public class DJ_BoardModifyProService {

	public void modifyService(DogjarangDto dto) {
		System.out.println("변경 서비스부");
		Dao dao= new Dao();
		dao.DJ_modifyarticle(dto);
	}

}
