package com.dogpark.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;
import com.dogpark.service.BoardWriteService;


public class HT_BoardWriteAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	String title= request.getParameter("ht_title");
	String contents= request.getParameter("ht_contents");
	String file= request.getParameter("ht_file");
	String writer= request.getParameter("ht_writer");
	
	BoardBean dto = new BoardBean();
	
	dto.setHt_title(title);
	dto.setHt_contents(contents);
	dto.setHt_file(file);
	dto.setU_id(writer);
	
	BoardWriteService BWS = new BoardWriteService();
	BWS.boardwritearticle(dto);

	ActionForward forward= new ActionForward();
	forward.setPath("/HT_List.jsp");
	return forward;
	}
}
