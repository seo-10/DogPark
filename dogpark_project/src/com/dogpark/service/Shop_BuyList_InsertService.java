package com.dogpark.service;

import com.dogpark.dao.ShopDao;
import com.dogpark.dto.BuyListDto;

public class Shop_BuyList_InsertService {
	
		public void buyListInsert_article(BuyListDto dto) {
			ShopDao dao= new ShopDao();
			dao.buyListInsert_article(dto);
		}

}
