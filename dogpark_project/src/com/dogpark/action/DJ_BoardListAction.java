package com.dogpark.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.PageInfo;
import com.dogpark.service.BoardListService;
import com.dogpark.service.DJ_BoardListService;

public class DJ_BoardListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("액션부");
		List<BoardBean> articleList=new ArrayList<BoardBean>();
		DJ_BoardListService dj_boardlistService = new DJ_BoardListService();
		articleList=dj_boardlistService.ListService();
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/DJ_List.jsp");
		
  		return forward;
		
	
	}
	
}