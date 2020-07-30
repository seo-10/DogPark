package com.dogpark.service;

import java.util.ArrayList;
import java.util.List;
import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;

public class BoardListService {
		Dao dao= new Dao();
		public void ListService(){
		dao.boardlistarticle();
		}
}
