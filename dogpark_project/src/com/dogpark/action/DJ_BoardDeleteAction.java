package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.DogjarangDto;
import com.dogpark.service.DJ_BoardDeleteService;
import com.dogpark.service.DJ_BoardListService;

public class DJ_BoardDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int code = Integer.parseInt(request.getParameter("code_no"));
		DJ_BoardDeleteService boarddeleteService = new DJ_BoardDeleteService();
		boarddeleteService.deleteService(code);
		
		List<DogjarangDto> articleList=new ArrayList<DogjarangDto>();
		DJ_BoardListService boardlistService = new DJ_BoardListService();
		articleList=boardlistService.ListService();
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/DJ_List.jsp");
		
  		return forward;
	}

}
