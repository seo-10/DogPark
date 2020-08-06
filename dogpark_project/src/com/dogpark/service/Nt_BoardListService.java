package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.NoticeDao;
import com.dogpark.dto.NoticeDto;

public class Nt_BoardListService {
	
	NoticeDao dao= new NoticeDao();
	List<NoticeDto> articleList = null;
	
	public List<NoticeDto> ListService(int page){
		articleList=dao.nt_boardlistarticle(page);
		return articleList;
	}
	
	public int getListCount() {
		int listCount = 0;
		listCount = dao.nt_selectListCount();
		return listCount;
	}

}
