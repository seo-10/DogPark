package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.DogjarangDto;

public class DJ_BoardReadService {
	List<DogjarangDto> articleList = null;
	Dao dao= new Dao();
	public List<DogjarangDto> readarticle(int code){
		articleList=dao.DJ_boardreadarticle(code);
		return articleList;
		
	}
	public void viewarticle(int code) {
		dao.viewUpArticle(code);
		
	}
}
