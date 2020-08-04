package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.NoticeDao;
import com.dogpark.dto.NoticeDto;

public class Nt_BoardListService {
	NoticeDao dao= new NoticeDao();
	List<NoticeDto> articleList = null;
	
	public List<NoticeDto> ListService(){
	articleList=dao.boardlistarticle();
	return articleList;
	}

}
