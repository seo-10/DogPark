package com.dogpark.service;

import java.util.ArrayList;
import java.util.List;
import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.DogjarangDto;

public class DJ_BoardListService {
		Dao dao= new Dao();
		List<DogjarangDto> articleList = null;
		
		public List<DogjarangDto> ListService(int page){
		articleList=dao.dj_boardlistarticle(page);
		return articleList;
		}

		public int getListCount() {
			int listCount = 0;
			listCount = dao.dj_selectListCount();
			return listCount;
		}
}
