package com.dogpark.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;

public class BoardListService {

		public List<BoardBean> broadlistaricle() {
			SqlSessionFactory sqlfactory = Dao.getConn();
			SqlSession sqlsession = sqlfactory.openSession();
			List<BoardBean> dto =sqlsession.selectList("superpowerselect");
			sqlsession.close();
			return dto;
		}

}
