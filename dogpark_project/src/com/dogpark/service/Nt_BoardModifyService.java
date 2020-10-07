package com.dogpark.service;

import com.dogpark.dao.NoticeDao;
import com.dogpark.dto.NoticeDto;

public class Nt_BoardModifyService {

	public void modifyService(NoticeDto dto) {
		// TODO Auto-generated method stub
		NoticeDao dao = new NoticeDao();
		dao.modifyarticle(dto);
	}

}
