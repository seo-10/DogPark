package com.dogpark.service;

import com.dogpark.dao.Dao;

public class BoardDeleteService {
	public void deleteService(int code) {
		Dao dao= new Dao();
		dao.deleteservice(code);
	}

}
