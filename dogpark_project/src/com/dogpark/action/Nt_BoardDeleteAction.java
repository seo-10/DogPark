package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.NoticeDto;
import com.dogpark.dto.PageInfo;
import com.dogpark.service.Nt_BoardDeleteService;
import com.dogpark.service.Nt_BoardListService;


public class Nt_BoardDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		int code = Integer.parseInt(request.getParameter("code_no"));
		Nt_BoardDeleteService boardDeleteService = new Nt_BoardDeleteService();
		boardDeleteService.deleteService(code);
		
		List<NoticeDto> articleList=new ArrayList<NoticeDto>();
		Nt_BoardListService boardlistService = new Nt_BoardListService();
		int page=1;
		int limit=4;
		
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		int listCount=boardlistService.getListCount();
		articleList=boardlistService.ListService(page);
		int maxPage=(int)((double)listCount/limit+0.95); //0.95�� ���ؼ� �ø� ó��.
   		//���� �������� ������ ���� ������ ��(1, 11, 21 ��...)
   		int startPage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
   		//���� �������� ������ ������ ������ ��.(10, 20, 30 ��...)
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
