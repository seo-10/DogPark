package com.dogpark.service;

import java.util.ArrayList;
import java.util.List;
import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;

public class DJ_BoardListService {
		Dao dao= new Dao();
		List<BoardBean> articleList = null;
		
		public List<BoardBean> ListService(){
		articleList=dao.dj_boardlistarticle();
		return articleList;
		}
}
