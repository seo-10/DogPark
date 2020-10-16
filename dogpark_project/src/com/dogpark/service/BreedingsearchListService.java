package com.dogpark.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;

import com.dogpark.dao.Dao;
import com.dogpark.dao.DogLifeDao;
import com.dogpark.dto.BreedingDto;

public class BreedingsearchListService  {
	DogLifeDao dao= new DogLifeDao();
	List<BreedingDto> articleList = null;
	
	public List<BreedingDto> BreedingsearchListService1(int page, String id){
		
		System.out.println("서비스부분"+id);
	
		
		articleList=dao.breedingsearchdao(page, id);
		System.out.println("service"+articleList.get(0).getU_id());
		return articleList;
	}

public int getListCount() {
	int listCount = 0;
	listCount = dao.selectDogListCount();
	return listCount;
}
}