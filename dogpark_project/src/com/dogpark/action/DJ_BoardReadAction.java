package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogpark.dao.Dao;
import com.dogpark.dto.ActionForward;
import com.dogpark.dto.DogjarangDto;
import com.dogpark.service.DJ_BoardReadService;

public class DJ_BoardReadAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int code = Integer.parseInt(request.getParameter("code_no"));
		List<DogjarangDto> articlList=new ArrayList<DogjarangDto>();
		DJ_BoardReadService RS = new DJ_BoardReadService();
		RS.viewarticle(code);
		articlList=RS.readarticle(code);
		request.setAttribute("articleList", articlList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/Dj_Read.jsp");
  		
		return forward;
	}
}
