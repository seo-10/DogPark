package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.NoticeDao;
import com.dogpark.dto.NoticeDto;

public class Nt_BoardListService {
	
	NoticeDao dao= new NoticeDao();
	List<NoticeDto> articleList = null;
	
	public List<NoticeDto> ListService(){
		
		System.out.println("서비스 왔냐?");
		articleList=dao.nt_boardlistarticle();
		return articleList;
	}

}
