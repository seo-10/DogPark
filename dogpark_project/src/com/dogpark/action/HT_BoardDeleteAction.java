package com.dogpark.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.service.BoardDeleteService;
import com.dogpark.service.BoardModifyReadService;

public class HT_BoardDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int code = Integer.parseInt(request.getParameter("code_no"));
		BoardDeleteService boarddeleteService = new BoardDeleteService();
		boarddeleteService.deleteService(code);
		
  		return null;
	}

}
