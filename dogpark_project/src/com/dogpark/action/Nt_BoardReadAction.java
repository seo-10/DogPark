package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.NoticeDto;
import com.dogpark.service.Nt_BoardReadService;

public class Nt_BoardReadAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int code = Integer.parseInt(request.getParameter("code_no"));
		List<NoticeDto> articlList=new ArrayList<NoticeDto>();
		Nt_BoardReadService RS = new Nt_BoardReadService();
		RS.viewarticle(code);
		articlList=RS.readarticle(code);
		request.setAttribute("articleList", articlList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/NT_list.jsp");
  		
		return forward;
	}
}
