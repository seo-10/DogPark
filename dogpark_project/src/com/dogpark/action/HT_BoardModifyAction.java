package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;
import com.dogpark.service.BoardModifyService;


public class HT_BoardModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("변경출력액션부");
		List<BoardBean> articleList=new ArrayList<BoardBean>();
		int code = Integer.parseInt(request.getParameter("code_no"));
		BoardModifyService boardmodifyreadService = new BoardModifyService();
		articleList=boardmodifyreadService.modifyselectService(code);
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/HT_Update.jsp");
		
  		return forward;
	}

}
