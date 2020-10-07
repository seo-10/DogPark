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

public class NoticeDao {
	static SqlSessionFactory sqlfactory;
	// 싱글톤 패턴(관리) = 객체를 한번만 만들어 계속 사용가능 static이 필수로 붙어야함.
	private static NoticeDao instance;

	public static NoticeDao getinstance() {
		if (instance == null) {
			synchronized (NoticeDao.class) {
				instance = new NoticeDao();
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
	
	public List<NoticeDto> nt_boardlistarticle(int page) {
		List<NoticeDto> articleList = null;
		System.out.println("dao 왔냐");
		SqlSessionFactory sqlfactory = NoticeDao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		articleList = sqlsession.selectList("noticeSelect");
		sqlsession.close();
		return articleList;
	}
	
	public int nt_selectListCount() {
		int listCount= 0;
		SqlSessionFactory sqlfactory = NoticeDao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		listCount=sqlsession.selectOne("nt_select_count");
		
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
	public List<NoticeDto> boardreadarticle(int code){
		List<NoticeDto> articleList = null;
		SqlSessionFactory sqlfactory = NoticeDao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		articleList = sqlsession.selectList("nt_board_read_select", code);

		sqlsession.close();
		return articleList;
		
	}

	public List<NoticeDto> NTmodifyReadtService(int code) {
		System.out.println("오냐?");
		List<NoticeDto> articleList = null;
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		articleList = sqlsession.selectList("nt_board_modify_select", code);

		sqlsession.close();
		return articleList;
	}
	public void modifyarticle(NoticeDto dto) {
		SqlSessionFactory sqlfactory = NoticeDao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		sqlsession.update("nt_board_modify_update", dto);
		sqlsession.commit();
		
		sqlsession.close();
	}
	public void deleteservice(int code) {
		SqlSessionFactory sqlfactory = NoticeDao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();

		sqlsession.update("nt_board_delete", code);
		sqlsession.commit();
		sqlsession.close();
	}
	public void viewUpArticle(int code) {
		SqlSessionFactory sqlfactory = NoticeDao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
	
		sqlsession.update("nt_viewupdate", code);
		sqlsession.commit();
		sqlsession.close();
	}
}

