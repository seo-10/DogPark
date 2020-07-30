package com.dogpark.service;

import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardWriteService {
	void boardwritearticle() {
		SqlSessionFactory sqlfactory = Dao.getConn();
		SqlSession sqlsession = sqlfactory.openSession();
		
		BoardBean dto = new BoardBean();
		
		dto.setHt_title(title);
		dto.setHt_contents(contents);
		dto.setHt_file(file);
		dto.setU_id(writer);
		
		sqlsession.insert("superpowerinsert",dto);
		sqlsession.commit();
		sqlsession.close();
		
	}

}
