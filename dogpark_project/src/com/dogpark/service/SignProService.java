package com.dogpark.service;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogpark.dao.Dao;

import com.dogpark.dto.Dto;
import com.mysql.jdbc.Connection;


public class SignProService {
	
	public boolean insertInfo(Dto dto) throws Exception {
		
		boolean insertSuccess = false;
		Dao signDao = Dao.getinstance();
		Dao.getConn();
		signDao.signId(dto);
		int insertCount = signDao.
	
		
	}
}
