package com.dogpark.service;

import com.dogpark.dao.Dao;
import com.dogpark.dto.Dto;



public class SignProService {
	// 회원가입
	public void insertInfo(Dto dto) throws Exception {
	
		Dao signDao = new Dao();
		signDao.signId(dto);
		
	}
}
