package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.DogjarangDto;

public class DJ_BoardModifyReadService {
	List<DogjarangDto> articleList = null;
	public List<DogjarangDto> DJ_modifyselectService(int code) {
		System.out.println("변경 출력 서비스부");
		Dao dao= new Dao();
		articleList=dao.DJ_modifyselectarticle(code);
		return articleList;
	}

}
