package com.dogpark.service;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogpark.dao.Dao;
import com.dogpark.dto.Dto;


public class SignProService {
	
	public boolean signId(Dto dto) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		//List<Dto> dto =sqlsession.selectList("superpowerselect");
		int check = sqlsession.insert("signInsert", dto);
		sqlsession.close();
		return check;
	}
}
