package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.NoticeDto;
import com.dogpark.dto.PageInfo;
import com.dogpark.dto.ShopDto;
import com.dogpark.service.Nt_BoardListService;
import com.dogpark.service.Shop_BoardListService;

public class Shop_BoardListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("쇼핑 액션 실행 완료");
		List<ShopDto> articleList=new ArrayList<ShopDto>();
		int page=1;
		int limit=15;
		
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		Shop_BoardListService shop_boardlistService = new Shop_BoardListService();
		int listCount=shop_boardlistService.getListCount();
		articleList=shop_boardlistService.ListService(page);
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
  		forward.setPath("/Shop_List.jsp");
		
	
		return forward;
	}

}
