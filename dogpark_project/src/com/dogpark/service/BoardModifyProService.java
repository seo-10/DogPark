package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.Dto;

public class BoardModifyProService {

	public List<BoardBean> modifyService(BoardBean dto) {
		List<BoardBean> articleList = null;
		System.out.println("���� ��� ���񽺺�");
		Dao dao= new Dao();
		articleList=dao.modifyarticle(dto);
		return articleList;
		
	}

}
