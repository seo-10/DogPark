package com.dogpark.service;


import com.dogpark.dao.DogSaleDao;
import com.dogpark.dto.Dogpark_dogsDto;


public class DSB_BoardModifyProService {

	public void modifyService(Dogpark_dogsDto dto) {
		System.out.println("���� ���񽺺�");
		DogSaleDao dao= new DogSaleDao();
		dao.DSB_modifyarticle(dto);
	}

}
