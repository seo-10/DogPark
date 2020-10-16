package com.dogpark.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BreedingDto;
import com.dogpark.dto.PageInfo;
import com.dogpark.service.BreedingsearchListService;

public class BreedingsearchAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("액션");
		List<BreedingDto> articleList=new ArrayList<BreedingDto>();
		int page=1;
		int limit=15;
		
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		BreedingsearchListService breedingsearchListservice = new BreedingsearchListService();
		int listCount=breedingsearchListservice.getListCount();
		
		HttpSession session = request.getSession();
		String id=(String)session.getAttribute("id");
		System.out.println("액션아이디값"+id);
		
		articleList=breedingsearchListservice.BreedingsearchListService1(page,id);
		int maxPage=(int)((double)listCount/limit+0.95); 
   		int startPage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
   	    int endPage = startPage+10-1;
   	    System.out.println("action"+articleList.get(0).getU_id());
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
  		forward.setPath("/Breedingsearch_result.jsp");
		
  		return forward;
		
	
	}
	
}