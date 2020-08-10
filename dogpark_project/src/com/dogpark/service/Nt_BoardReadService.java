package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.NoticeDao;
import com.dogpark.dto.NoticeDto;

public class Nt_BoardReadService {
	
	List<NoticeDto> articleList = null;
	NoticeDao dao= new NoticeDao();
	
	public List<NoticeDto> readarticle(int code){
		articleList=dao.boardreadarticle(code);
		return articleList;
	}
	
	public void viewarticle(int code) {
		dao.viewUpArticle(code);
		
	}
}
