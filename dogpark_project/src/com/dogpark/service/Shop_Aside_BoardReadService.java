package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.ShopDao;
import com.dogpark.dto.ShopDto;

public class Shop_Aside_BoardReadService {
	
	List<ShopDto> articleList = null;
	ShopDao dao= new ShopDao();
	
	public List<ShopDto> viewarticle(int code) {
		// TODO Auto-generated method stub
		articleList=dao.boardreadarticle(code);
		return articleList;
	}

	public List<ShopDto> readarticle(int code) {
		// TODO Auto-generated method stub
		dao.viewUpArticle(code);
		return null;
	}


}
