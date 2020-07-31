package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;
import com.dogpark.service.BoardModifyService;


public class HT_BoardModifyProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("¾×¼ÇºÎ");
		List<BoardBean> articleList=new ArrayList<BoardBean>();
		int code = Integer.parseInt(request.getParameter("code_no"));
		BoardModifyService boardmodifyService = new BoardModifyService();
		articleList=boardmodifyService.modifyselectService(code);
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("HT_Read");
		
  		return forward;
	}

}
