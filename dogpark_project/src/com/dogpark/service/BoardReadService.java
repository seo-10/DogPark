package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;

public class BoardReadService {
	List<BoardBean> articleList = null;
	
	public List<BoardBean> readarticle(int code){
		Dao dao= new Dao();
		articleList=dao.boardreadarticle(code);
		return articleList;
		
	}
}
