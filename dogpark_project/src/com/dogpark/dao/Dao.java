package com.dogpark.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.dogpark.dto.BoardBean;

public class Dao {
	static SqlSessionFactory sqlfactory;
	//싱글톤 패턴(관리) = 객체를 한번만 만들어 계속 사용가능 static이 필수로 붙어야함.
	private static Dao instance;
	
	public static Dao getinstance() {
		if(instance == null) {
			synchronized (Dao.class) {
				instance = new Dao();
			}
		}
		return instance;
	}
	public static SqlSessionFactory getConn() {
		try {
			Reader reader = Resources.getResourceAsReader("DAO/Mybatis/mybatis-config.xml");
			sqlfactory = new SqlSessionFactoryBuilder().build(reader);// 연결
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sqlfactory;
	}
	
	
}
