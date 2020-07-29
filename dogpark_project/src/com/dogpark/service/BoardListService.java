package com.dogpark.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;

public class BoardListService {

		public List<BoardBean> broadlistarticle() throws Exception {
			List<BoardBean> articleList = null;
			SqlSessionFactory sqlfactory = Dao.getConn();
			SqlSession sqlsession = sqlfactory.openSession();
			articleList =sqlsession.selectList("superpowerselect");
			sqlsession.close();
			return articleList;
		}

}
