package com.dogpark.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.dogpark.dto.BoardBean;
import com.dogpark.dto.BreedingDto;
import com.dogpark.dto.CalendarDto;
import com.dogpark.dto.DogjarangDto;
import com.dogpark.dto.Dogpark_dogsDto;

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

	public List<CalendarDto> DateSelectarticle(String date) {
		List<CalendarDto> calendarList = null;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		
		calendarList=sqlsession.selectList("ds_dateselect",date);
		
		sqlsession.close();
		return calendarList;
		
	}

	public List<CalendarDto> DateCountarticle() {
		List<CalendarDto> countList;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		
		countList=sqlsession.selectList("ds_datecount");
		
		sqlsession.close();
		return countList;
	}
	//문양 게시판
	public List<DogjarangDto> dbs_boardlistarticle(int page) {
		List<DogjarangDto> articleList = null;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		int startrow=(page-1)*4;
		articleList = sqlsession.selectList("dsb_select",startrow);
		sqlsession.close();
		return articleList;
	}
	public void dsb_boardwritearticle(Dogpark_dogsDto dto) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		
		sqlsession.insert("dsb_boardinsert",dto);
		sqlsession.commit();
		sqlsession.close();	
	}

	public int dbs_selectListCount() {
		int listCount= 0;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		listCount=sqlsession.selectOne("dsb_select_count");
		
		sqlsession.close();
		return listCount;
	}
}