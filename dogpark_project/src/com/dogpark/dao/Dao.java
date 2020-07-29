package com.dogpark.dao;

import java.io.IOException;
import java.io.Reader;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class Dao {
	static SqlSessionFactory sqlfactory;
	//�̱��� ����(����) = ��ü�� �ѹ��� ����� ��� ��밡�� static�� �ʼ��� �پ����.
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
			Reader reader = Resources.getResourceAsReader("com/dogpark/dao/mybatis-config.xml");
			sqlfactory = new SqlSessionFactoryBuilder().build(reader);// ����
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sqlfactory;
	}
	
}
