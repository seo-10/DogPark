package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.ShopDao;
import com.dogpark.dto.ShopDto;

public class Shop_BoardListService {
	
	ShopDao dao = new ShopDao();
	List<ShopDto> articleList = null;

	public List<ShopDto> ListService(int page) {
		// TODO Auto-generated method stub
		articleList=dao.shop_boardlistarticle(page);
		return articleList;
	}
	
	public int getListCount() {
		int listCount = 0;
		listCount = dao.shop_selectListCount();
		return listCount;
	}

}
