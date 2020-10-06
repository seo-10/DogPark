package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.Dogpark_dogsDto;
import com.dogpark.dto.PageInfo;
import com.dogpark.service.DSB_BoardDeleteService;
import com.dogpark.service.DSB_BoardListService;

public class DSB_BoardDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String dpd_name = request.getParameter("dpd_name");
		DSB_BoardDeleteService boarddeleteService = new DSB_BoardDeleteService();
		boarddeleteService.deleteService(dpd_name);
		
		List<Dogpark_dogsDto> articleList=new ArrayList<Dogpark_dogsDto>();
		int page=1;
		int limit=4;
		
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		DSB_BoardListService boardlistService = new DSB_BoardListService();
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
  		forward.setPath("/DSB_saleboard_middle.jsp");
		
  		return forward;
	}

}
