package com.dogpark.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.dogpark.dto.BoardBean;
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
	
	public List<BoardBean> boardlistarticle() {
		List<BoardBean> articleList = null;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		articleList = sqlsession.selectList("superpowerselect");
		sqlsession.close();
		return articleList;
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

}
