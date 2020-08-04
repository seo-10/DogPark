package com.dogpark.service;

import com.dogpark.dao.NoticeDao;
import com.dogpark.dto.NoticeDto;

public class Nt_BoardWriteService {
	public void boardwritearticle(NoticeDto dto) {
		NoticeDao dao= new NoticeDao();
		dao.boardwritearticle(dto);
	}

}
