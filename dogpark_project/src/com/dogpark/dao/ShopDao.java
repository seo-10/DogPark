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
import com.dogpark.dto.NoticeDto;
import com.dogpark.dto.ShopDto;

public class ShopDao {
	
	static SqlSessionFactory sqlfactory;
	// 싱글톤 패턴(관리) = 객체를 한번만 만들어 계속 사용가능 static이 필수로 붙어야함.
	private static ShopDao instance;

	public static ShopDao getinstance() {
		if (instance == null) {
			synchronized (NoticeDao.class) {
				instance = new ShopDao();
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
	
	public List<ShopDto> shop_boardlistarticle(int page) {
		List<ShopDto> articleList = null;
		SqlSessionFactory sqlfactory = ShopDao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		articleList = sqlsession.selectList("shopSelect");
		sqlsession.close();
		return articleList;
	}
	
	public int shop_selectListCount() {
		int listCount= 0;
		SqlSessionFactory sqlfactory = ShopDao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		listCount=sqlsession.selectOne("shop_select_count");
		
		sqlsession.close();
		return listCount;
	}
	
	public void boardwritearticle(NoticeDto dto) {
		SqlSessionFactory sqlfactory = NoticeDao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		
		sqlsession.insert("nt_boardinsert",dto);
		sqlsession.commit();
		sqlsession.close();
	}
	
	public List<ShopDto> boardreadarticle(String pd_name){
		List<ShopDto> articleList = null;
		SqlSessionFactory sqlfactory_aside = ShopDao.getConn();
		SqlSession sqlsession_aside = sqlfactory_aside.openSession();
		System.out.println("shop aside DAO");

		articleList = sqlsession_aside.selectList("shop_aside_board_read_select", pd_name);

		sqlsession_aside.close();
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
//	public void viewUpArticle(String code) {
//		SqlSessionFactory sqlfactory = ShopDao.getConn();
//		SqlSession sqlsession = sqlfactory.openSession();
//	
//		sqlsession.update("ht_viewupdate", code);
//		sqlsession.commit();
//		sqlsession.close();
//	}
}

