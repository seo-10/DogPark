package com.dogpark.service;

import com.dogpark.dao.Dao;

public class DJ_BoardDeleteService {
	public void deleteService(int code) {
		Dao dao= new Dao();
		dao.DJ_deleteservice(code);
	}

}
