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
		int page=1;
		int limit=15;
		
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		Nt_BoardListService nt_boardlistService = new Nt_BoardListService();
		int listCount=nt_boardlistService.getListCount();
		articleList=nt_boardlistService.ListService(page);
		int maxPage=(int)((double)listCount/limit+0.95);
		int startPage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
		int endPage = startPage+10-1;
		
		if (endPage> maxPage) endPage= maxPage;

   		PageInfo pageInfo = new PageInfo();
   		pageInfo.setEndPage(endPage);
   		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setStartPage(startPage);	
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/NT_List.jsp");
		
  		return forward;
	}

}
