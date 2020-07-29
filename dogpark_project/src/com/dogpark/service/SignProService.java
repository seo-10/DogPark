package com.dogpark.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.Dto;
import com.mysql.jdbc.Connection;

public class SignProService {
	
	public int SignID(Dto dto) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		//List<Dto> dto =sqlsession.selectList("superpowerselect");
		int check = sqlsession.insert("signInsert", dto);
		sqlsession.close();
		return check;
	}
}
