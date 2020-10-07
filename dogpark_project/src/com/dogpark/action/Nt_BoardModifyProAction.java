package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.NoticeDto;
import com.dogpark.service.BoardModifyReadService;
import com.dogpark.service.NT_BoardModifyReadService;

public class Nt_BoardModifyProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		NoticeDto dto =new NoticeDto();
		int code =Integer.parseInt(request.getParameter("code_no"));
		String title= request.getParameter("nt_title");
		String contents= request.getParameter("nt_contents");
		dto.setCode_no(code);
		dto.setNt_title(title);
		dto.setNt_contents(contents);
		NT_BoardModifyReadService NTboardModifyproService = new NT_BoardModifyReadService();
		NTboardModifyproService.NTmodifyProService(dto);
		List<NoticeDto> articleList=new ArrayList<NoticeDto>();
		//글 수정 후 read 서비스를 호출하여 수정된 화면 출력
		NT_BoardModifyReadService boardmodifyreadService = new NT_BoardModifyReadService();
		articleList=boardmodifyreadService.NTmodifyReadtService(code);
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/NT_Read.jsp");
		return forward;
	}

}
