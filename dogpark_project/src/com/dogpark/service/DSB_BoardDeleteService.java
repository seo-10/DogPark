package com.dogpark.service;

import com.dogpark.dao.DogSaleDao;

public class DSB_BoardDeleteService {
	public void deleteService(String dpd_name) {
		DogSaleDao dao= new DogSaleDao();
		dao.DSB_deleteservice(dpd_name);
	}

}
