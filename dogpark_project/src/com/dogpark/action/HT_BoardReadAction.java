package com.dogpark.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogpark.dao.Dao;
import com.dogpark.dto.ActionForward;
import com.dogpark.service.BoardReadService;

public class HT_BoardReadAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int code = Integer.parseInt(request.getParameter("code_no"));
		BoardReadService RS = new BoardReadService();
		RS.readarticle(code);

		return null;
	}
}
