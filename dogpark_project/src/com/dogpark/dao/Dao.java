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
import com.dogpark.dto.DogjarangDto;
import com.dogpark.dto.Dto;

public class Dao {
	static SqlSessionFactory sqlfactory;
	// 싱글톤 패턴(관리) = 객체를 한번만 만들어 계속 사용가능 static이 필수로 붙어야함.
	private static Dao instance;

	public static Dao getinstance() {
		if (instance == null) {
			synchronized (Dao.class) {
				instance = new Dao();
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

	public void signId(Dto dto) {
		System.out.println("signId");
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		sqlsession.insert("signInsert", dto);
		sqlsession.commit();
		sqlsession.close();
	}
	public String signIdCheck(Dto dto) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		String articleList = sqlsession.selectOne("signCheck", dto);
		sqlsession.close();
		System.out.println("signIdcheck");
		return articleList;
	}
	public List<Dto> loginCheck(String id) {
		
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		
		List<Dto> articleList = sqlsession.selectList("loginCheck", id);
		System.out.println("size:" + articleList.size());
		sqlsession.close();
		return articleList;
	}
	
	public List<BoardBean> boardlistarticle(int page) {
		List<BoardBean> articleList = null;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		int startrow=(page-1)*10;
		articleList = sqlsession.selectList("superpowerselect" , startrow);
		sqlsession.close();
		return articleList;
	}
	public int selectListCount() {
		int listCount= 0;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		listCount=sqlsession.selectOne("ht_select_count");
		
		sqlsession.close();
		return listCount;
	}
	public void boardwritearticle(BoardBean dto) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		
		sqlsession.insert("ht_boardinsert",dto);
		sqlsession.commit();
		sqlsession.close();
	}
	public List<BoardBean> boardreadarticle(int code){
		List<BoardBean> articleList = null;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		articleList = sqlsession.selectList("ht_board_read_select", code);

		sqlsession.close();
		return articleList;
		
	}

	public List<BoardBean> modifyselectarticle(int code) {
		List<BoardBean> articleList = null;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		articleList = sqlsession.selectList("ht_board_modify_select", code);

		sqlsession.close();
		return articleList;
	}
	public void modifyarticle(BoardBean dto) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		sqlsession.update("ht_board_modify_update", dto);
		sqlsession.commit();
		
		sqlsession.close();
	}
	public void deleteservice(int code) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		sqlsession.update("ht_board_delete", code);
		sqlsession.commit();
		sqlsession.close();
	}
	public void viewUpArticle(int code) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
	
		sqlsession.update("ht_viewupdate", code);
		sqlsession.commit();
		sqlsession.close();
	}
	//반려견 자랑 게시판---------------------------------------
	public List<DogjarangDto> dj_boardlistarticle(int page) {
		List<DogjarangDto> articleList = null;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		int startrow=(page-1)*10;
		articleList = sqlsession.selectList("dj_select",startrow);
		sqlsession.close();
		return articleList;
	}
	public int dj_selectListCount() {
		int listCount= 0;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		listCount=sqlsession.selectOne("dj_select_count");
		
		sqlsession.close();
		return listCount;
	}
	public List<DogjarangDto> DJ_boardreadarticle(int code){
		List<DogjarangDto> articleList = null;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		articleList = sqlsession.selectList("dj_board_read_select", code);

		sqlsession.close();
		return articleList;
		
	}

	public void DJ_boardwritearticle(DogjarangDto dto) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		
		sqlsession.insert("dj_boardinsert",dto);
		sqlsession.commit();
		sqlsession.close();	
	}
	public List<DogjarangDto> DJ_modifyselectarticle(int code) {
		List<DogjarangDto> articleList = null;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		articleList = sqlsession.selectList("dj_board_modify_select", code);

		sqlsession.close();
		return articleList;
	}
	public void DJ_modifyarticle(DogjarangDto dto) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		sqlsession.update("dj_board_modify_update", dto);
		sqlsession.commit();
		
		sqlsession.close();
	}
	public void DJ_deleteservice(int code) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		sqlsession.update("dj_board_delete", code);
		sqlsession.commit();
		sqlsession.close();
	}
	public void DJ_viewUpArticle(int code) {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
	
		sqlsession.update("dj_viewupdate", code);
		sqlsession.commit();
		sqlsession.close();
	}


}

