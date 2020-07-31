package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.Dto;

public class BoardModifyProService {

	public List<BoardBean> modifyService(BoardBean dto) {
		List<BoardBean> articleList = null;
		System.out.println("변경 출력 서비스부");
		Dao dao= new Dao();
		articleList=dao.modifyarticle(dto);
		return articleList;
		
	}

}
