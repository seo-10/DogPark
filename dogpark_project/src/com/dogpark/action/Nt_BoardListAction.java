package com.dogpark.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;
import com.dogpark.dto.NoticeDto;
import com.dogpark.dto.PageInfo;
import com.dogpark.service.BoardListService;
import com.dogpark.service.Nt_BoardListService;

public class Nt_BoardListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("공지사항 액션 실행 완료");
		List<NoticeDto> articleList=new ArrayList<NoticeDto>();
		Nt_BoardListService nt_boardlistService = new Nt_BoardListService();
		articleList=nt_boardlistService.ListService();
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/NT_List.jsp");
		
  		return forward;
	}

}
