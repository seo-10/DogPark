package com.dogpark.service;

import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardWriteService {
	public void boardwritearticle(BoardBean dto) {
		Dao dao= new Dao();
		dao.boardwritearticle(dto);
	}

}
