package com.dogpark.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.Dto;
import com.mysql.jdbc.Connection;

public class SignProService {
	
	public List<Dto> SignID(String id) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		List<Dto> dto =sqlsession.selectList("superpowerselect");
		sqlsession.close();
		return dto;
	}
	
	public String SignPW(String pw) {
		Connection con = getConnection();
		Dao dao = Dao.getInstance();
		dao.setConnection(con);
		String pw2 = dao.selectPW(pw);
		
		close(con);
		return pw2;
	}
	
	public String SignEmail(String emial) {
		Connection con = getConnection();
		Dao dao = Dao.getInstance();
		dao.setConnection(con);
		String pw2 = dao.selectPW(pw);
		
		close(con);
		return pw2;
	}
}
