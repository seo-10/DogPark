package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.Dto;

public class BoardModifyProService {

	public void modifyService(BoardBean dto) {
		System.out.println("변경 서비스부");
		Dao dao= new Dao();
		dao.modifyarticle(dto);
	}

}
