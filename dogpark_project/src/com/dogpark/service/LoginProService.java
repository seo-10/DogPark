package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.Dao;
import com.dogpark.dto.Dto;



public class LoginProService {
	// ȸ������
	Dao signDao = new Dao();
	
	public List<Dto> checkInfo(String id) throws Exception {
		
		List<Dto> articleList = signDao.loginCheck(id);
		return articleList;
	}
}
