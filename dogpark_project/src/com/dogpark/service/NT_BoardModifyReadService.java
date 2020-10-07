package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.NoticeDao;
import com.dogpark.dto.NoticeDto;

public class NT_BoardModifyReadService {
	
	List<NoticeDto> articleList = null;
	
	public List<NoticeDto> NTmodifyReadtService(int code) {
		// TODO Auto-generated method stub

		NoticeDao dao = new NoticeDao();
		articleList=dao.NTmodifyReadtService(code);
		return articleList;
	}
	
	public void NTmodifyProService(NoticeDto dto) {
		NoticeDao dao = new NoticeDao();
		dao.modifyarticle(dto);
	}


}
