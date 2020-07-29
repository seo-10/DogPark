package com.dogpark.service;

import static com.dogpark.dbconnect.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;
import com.dogpark.dao.Dao;
import com.dogpark.dto.BoardBean;

public class BoardListService {

	public int getListCount() throws Exception{
		int listCount = 0;
		Connection con = getConnection();
		Dao boardDAO = Dao.getInstance();
		boardDAO.setConnection(con);
		listCount = boardDAO.selectListCount();
		close(con);
		return listCount;
		
	}

	public ArrayList<BoardBean> getArticleList(int page, int limit) throws Exception{
		
		ArrayList<BoardBean> articleList = null;
		Connection con = getConnection();
		Dao boardDAO = Dao.getInstance();
		boardDAO.setConnection(con);
		articleList = boardDAO.selectArticleList(page,limit);
		close(con);
		return articleList;
		
	}

}
