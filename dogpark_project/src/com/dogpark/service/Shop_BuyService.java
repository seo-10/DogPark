package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.ShopDao;
import com.dogpark.dto.ShopDto;

public class Shop_BuyService {
	
	List<ShopDto> articleList = null;
	ShopDao dao= new ShopDao();
	
	public List<ShopDto> readarticle(String pd_name) {
		articleList=dao.boardbuyarticle(pd_name);
		return articleList;
	}
}