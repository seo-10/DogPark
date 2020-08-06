package com.dogpark.service;

import java.util.ArrayList;
import java.util.List;
import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;

public class BreedingListService  {
	Dao dao= new Dao();
	List<BoardBean> articleList = null;
	
	public List<BoardBean> BreedingListService(int page){
	articleList=dao.boardlistarticle(page);
	return articleList;
}

public int getListCount() {
	int listCount = 0;
	listCount = dao.selectListCount();
	return listCount;
}
}