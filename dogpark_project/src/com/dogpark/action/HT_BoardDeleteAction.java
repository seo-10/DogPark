package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;
import com.dogpark.service.BoardDeleteService;
import com.dogpark.service.BoardListService;
import com.dogpark.service.BoardModifyReadService;

public class HT_BoardDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int code = Integer.parseInt(request.getParameter("code_no"));
		BoardDeleteService boarddeleteService = new BoardDeleteService();
		boarddeleteService.deleteService(code);
		
		List<BoardBean> articleList=new ArrayList<BoardBean>();
		BoardListService boardlistService = new BoardListService();
		articleList=boardlistService.ListService();
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/HT_List.jsp");
		
  		return forward;
	}

}
