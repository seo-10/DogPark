package com.dogpark.service;

import com.dogpark.dao.NoticeDao;

public class Nt_BoardDeleteService {

	public void deleteService(int code) {
			NoticeDao dao = new NoticeDao();
			dao.deleteservice(code);
		}
}

