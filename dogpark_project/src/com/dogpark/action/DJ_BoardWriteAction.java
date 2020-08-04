package com.dogpark.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.DogjarangDto;
import com.dogpark.service.DJ_BoardWriteService;


public class DJ_BoardWriteAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	String title= request.getParameter("dj_title");
	String contents= request.getParameter("dj_contents");
	String file= request.getParameter("dj_file");
	String writer= request.getParameter("dj_writer");
	
	DogjarangDto dto = new DogjarangDto();
	
	dto.setDj_title(title);
	dto.setDj_contents(contents);
	dto.setDj_file(file);
	dto.setU_id(writer);
	
	DJ_BoardWriteService BWS = new DJ_BoardWriteService();
	BWS.DJ_boardwritearticle(dto);

	ActionForward forward= new ActionForward();
	forward.setPath("dj_boardList.bo");
	return forward;
	}
}
