package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;

public class BoardReadService {
	public List<BoardBean> readarticle(int code){
		Dao dao= new Dao();
		dao.boradreadarticle(code);
		return null;
		
	}
}
