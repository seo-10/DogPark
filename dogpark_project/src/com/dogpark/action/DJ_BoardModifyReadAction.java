package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.DogjarangDto;
import com.dogpark.service.DJ_BoardModifyReadService;


public class DJ_BoardModifyReadAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("변경출력액션부");
		List<DogjarangDto> articleList=new ArrayList<DogjarangDto>();
		int code = Integer.parseInt(request.getParameter("code_no"));
		DJ_BoardModifyReadService boardmodifyreadService = new DJ_BoardModifyReadService();
		articleList=boardmodifyreadService.DJ_modifyselectService(code);
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/DJ_Update.jsp");
		
  		return forward;
	}

}
