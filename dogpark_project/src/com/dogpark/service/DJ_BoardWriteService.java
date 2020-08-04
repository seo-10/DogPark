package com.dogpark.service;

import com.dogpark.dao.Dao;
import com.dogpark.dto.DogjarangDto;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DJ_BoardWriteService {
	public void DJ_boardwritearticle(DogjarangDto dto) {
		Dao dao= new Dao();
		dao.DJ_boardwritearticle(dto);
	}

}
