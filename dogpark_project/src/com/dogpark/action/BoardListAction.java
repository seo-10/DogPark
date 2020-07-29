package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.PageInfo;
import com.dogpark.service.BoardListService;

public class BoardListAction {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		BoardListService bls = new BoardListService();
		List<BoardBean> dto = bls.broadlistaricle();
		request.setAttribute("dto", dto);
		ActionForward forward= new ActionForward();
   		forward.setPath("/HT_list.jsp");
		
		return forward;
	 }
}
