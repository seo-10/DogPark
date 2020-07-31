package com.dogpark.service;

import com.dogpark.dao.Dao;
import com.dogpark.dto.Dto;


public class SignProService {
	// 회원가입
	Dao signDao = new Dao();
	public String checkInfo(Dto dto) throws Exception {
		
		String articleList = signDao.signIdCheck(dto);
		return articleList;
	}
	
	public void insertInfo(Dto dto) throws Exception {
		
		signDao.signId(dto);
	}
}
