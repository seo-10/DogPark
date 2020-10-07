package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dogpark.dto.ActionForward;
import com.dogpark.dto.NoticeDto;
import com.dogpark.service.NT_BoardModifyReadService;

public class Nt_BoardModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		List<NoticeDto> articleList=new ArrayList<NoticeDto>();
		int code = Integer.parseInt(request.getParameter("code_no"));
		NT_BoardModifyReadService boardModifyReadService = new NT_BoardModifyReadService();
		articleList=boardModifyReadService.NTmodifyReadtService(code);
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/NT_Update.jsp");
		
  		return forward;
	}

}
