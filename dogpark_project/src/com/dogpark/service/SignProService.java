package com.dogpark.service;

import com.dogpark.dao.Dao;
import com.dogpark.dto.Dto;



public class SignProService {
	// ȸ������
	public void insertInfo(Dto dto) throws Exception {
	
		Dao signDao = new Dao();
		signDao.signId(dto);
		
	}
}
