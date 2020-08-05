package com.dogpark.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.NoticeDto;
import com.dogpark.service.Nt_BoardWriteService;

public class Nt_BoardWriteAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	String title= request.getParameter("nt_title");
	String contents= request.getParameter("nt_contents");
	
	NoticeDto dto = new NoticeDto();
	
	dto.setNt_title(title);
	dto.setNt_contents(contents);
	
	Nt_BoardWriteService BWS = new Nt_BoardWriteService();
	BWS.boardwritearticle(dto);

	ActionForward forward= new ActionForward();
	forward.setPath("notice_list.bo");
	return forward;
	}

}
