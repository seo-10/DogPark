package com.dogpark.service;

import java.util.ArrayList;
import java.util.List;
import com.dogpark.dao.Dao;
import com.dogpark.dao.DogLifeDao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.BreedingDto;

public class BreedingListService  {
	DogLifeDao dao= new DogLifeDao();
	List<BreedingDto> articleList = null;
	
	public List<BreedingDto> BreedingListService(int page){
	articleList=dao.breedingdao(page);
	return articleList;
}

public int getListCount() {
	int listCount = 0;
	listCount = dao.selectDogListCount();
	return listCount;
}
}