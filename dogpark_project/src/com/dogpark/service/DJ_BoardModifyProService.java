package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.Dao;
import com.dogpark.dto.DogjarangDto;


public class DJ_BoardModifyProService {

	public void modifyService(DogjarangDto dto) {
		System.out.println("���� ���񽺺�");
		Dao dao= new Dao();
		dao.DJ_modifyarticle(dto);
	}

}
