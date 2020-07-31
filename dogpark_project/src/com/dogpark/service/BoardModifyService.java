package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;

public class BoardModifyService {
	List<BoardBean> articleList = null;
	public List<BoardBean> modifyselectService(int code) {
		Dao dao= new Dao();
		articleList=dao.modifyselectarticle(code);
		return articleList;
	}

}
