package com.dogpark.service;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import com.dogpark.dao.signDao;
import com.dogpark.dto.BoardBean;

public class BoardListService {
		
		public List<BoardBean> broadlistarticle() {

			System.out.println("서비스부");
				List<BoardBean> articleList = null;
				SqlSessionFactory sqlfactory = signDao.getConn();
				SqlSession sqlsession = sqlfactory.openSession();
				articleList =sqlsession.selectList("superpowerselect");
				sqlsession.close();
				return articleList;
	
		}

}
