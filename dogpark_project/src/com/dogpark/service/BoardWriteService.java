package com.dogpark.service;

import com.dogpark.dao.signDao;
import com.dogpark.dto.BoardBean;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardWriteService {
<<<<<<< HEAD
	public void boardwritearticle(BoardBean dto) {
		SqlSessionFactory sqlfactory = Dao.getConn();
=======
	void boardwritearticle() {
		SqlSessionFactory sqlfactory = signDao.getConn();
>>>>>>> branch 'master' of https://github.com/seo-10/DogPark.git
		SqlSession sqlsession = sqlfactory.openSession();
		
		sqlsession.insert("superpowerinsert",dto);
		sqlsession.commit();
		sqlsession.close();
		
	}

}
