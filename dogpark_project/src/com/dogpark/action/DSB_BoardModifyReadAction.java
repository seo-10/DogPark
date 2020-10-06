package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.Dogpark_dogsDto;
import com.dogpark.service.DSB_BoardModifyReadService;


public class DSB_BoardModifyReadAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("변경출력액션부");
		List<Dogpark_dogsDto> articleList=new ArrayList<Dogpark_dogsDto>();
		String dpd_name =request.getParameter("dpd_name");
		DSB_BoardModifyReadService boardmodifyreadService = new DSB_BoardModifyReadService();
		articleList=boardmodifyreadService.DSB_modifyselectService(dpd_name);
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/DSB_Update.jsp");
		
  		return forward;
	}

}
