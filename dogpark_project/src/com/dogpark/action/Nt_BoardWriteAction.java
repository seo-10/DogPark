package com.dogpark.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.NoticeDto;
import com.dogpark.service.BoardWriteService;

public class Nt_BoardWriteAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	String title= request.getParameter("nt_title");
	String contents= request.getParameter("nt_contents");
	
	NoticeDto dto = new NoticeDto();
	
	dto.setNt_title(title);
	dto.setNt_contents(contents);
	
	BoardWriteService BWS = new BoardWriteService();
	BWS.boardwritearticle(dto);

	ActionForward forward= new ActionForward();
	forward.setPath("boardList.bo");
	return forward;
	}

}
