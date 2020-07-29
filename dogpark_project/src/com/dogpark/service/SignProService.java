package com.dogpark.service;

import com.dogpark.dao.Dao;
import com.mysql.jdbc.Connection;

public class SignProService {
	
	public String SignID(String id) {
		Connection con = getConnection();
		Dao dao = Dao.getInstance();
		dao.setConnection(con);
		String id2 = dao.selectID(id);
		
		close(con);
		return id2;
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
