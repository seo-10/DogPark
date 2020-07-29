package com.dogpark.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.PageInfo;
import com.dogpark.service.BoardListService;

public class BoardListAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		BoardListService boardlistService = new BoardListService();
		List<BoardBean> articleList = boardlistService.broadlistarticle();
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
   		forward.setPath("/HT_list.jsp");
		
		return forward;
	 }
}
