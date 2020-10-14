package com.dogpark.service;

import java.util.List;



import com.dogpark.dao.Dao;
import com.dogpark.dao.DogLifeDao;
import com.dogpark.dto.CafeDto;


public class CafeDetailService {
	DogLifeDao cafedetaildao11 = new DogLifeDao();
	List<CafeDto> cafearticleList = null;
		
	public List<CafeDto> cafedetailarticle(CafeDto dto) {
			
			cafearticleList=cafedetaildao11.cafedetaildao(dto);
			System.out.println("카페서비스");
			System.out.println();
			return cafearticleList;
	}
}
