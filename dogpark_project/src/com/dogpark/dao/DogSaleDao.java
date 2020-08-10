package com.dogpark.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.dogpark.dto.BoardBean;
import com.dogpark.dto.BreedingDto;
import com.dogpark.dto.CalendarDto;

public class DogSaleDao {
	static SqlSessionFactory sqlfactory;
	// 싱글톤 패턴(관리) = 객체를 한번만 만들어 계속 사용가능 static이 필수로 붙어야함.
	private static DogSaleDao instance;

	public static DogSaleDao getinstance() {
		if (instance == null) {
			synchronized (DogSaleDao.class) {
				instance = new DogSaleDao();
			}
		}
		return instance;
	}

	public static SqlSessionFactory getConn() {
		try {
			Reader reader = Resources.getResourceAsReader("com/dogpark/dao/mybatis-config.xml");
			sqlfactory = new SqlSessionFactoryBuilder().build(reader);// 연결
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sqlfactory;
	}
	//예약 시스템 db insert
	public void ReservationInsertarticle(CalendarDto dto) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		
		sqlsession.insert("ds_reservationinsert",dto);
		sqlsession.commit();
		sqlsession.close();
	}
}