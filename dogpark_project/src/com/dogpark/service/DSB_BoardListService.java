package com.dogpark.service;

import java.util.ArrayList;
import java.util.List;
import com.dogpark.dao.DogSaleDao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.Dogpark_dogsDto;

public class DSB_BoardListService {
		DogSaleDao dao= new DogSaleDao();
		List<Dogpark_dogsDto> articleList = null;
		
		public List<Dogpark_dogsDto> ListService(int page){
		articleList=dao.dbs_boardlistarticle(page);
		return articleList;
		}

		public int getListCount() {
			int listCount = 0;
			listCount = dao.dbs_selectListCount();
			return listCount;
		}
}
