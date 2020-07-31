package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;

public class BoardReadService {
	List<BoardBean> articleList = null;
	Dao dao= new Dao();
	public List<BoardBean> readarticle(int code){
		articleList=dao.boardreadarticle(code);
		return articleList;
		
	}
	public void viewarticle(int code) {
		dao.viewUpArticle(code);
		
	}
}
