package com.dogpark.service;

import com.dogpark.dao.DogSaleDao;
import com.dogpark.dto.Dogpark_dogsDto;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DSB_BoardWriteService {
	public void dsb_boardwritearticle(Dogpark_dogsDto dto) {
		DogSaleDao dao= new DogSaleDao();
		dao.dsb_boardwritearticle(dto);
	}

}
