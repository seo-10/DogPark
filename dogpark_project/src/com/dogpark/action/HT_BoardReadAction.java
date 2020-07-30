package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogpark.dao.Dao;
import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;
import com.dogpark.service.BoardReadService;

public class HT_BoardReadAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int code = Integer.parseInt(request.getParameter("code_no"));
		List<BoardBean> articlList=new ArrayList<BoardBean>();
		BoardReadService RS = new BoardReadService();
		articlList=RS.readarticle(code);
		request.setAttribute("articleList", articlList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/HT_Read.jsp");

		return forward;
	}
}
