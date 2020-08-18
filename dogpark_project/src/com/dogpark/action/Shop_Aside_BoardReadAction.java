package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.ShopDto;
import com.dogpark.service.Shop_Aside_BoardReadService;

public class Shop_Aside_BoardReadAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pd_name = request.getParameter("pd_name");
		List<ShopDto> articlList=new ArrayList<ShopDto>();
		Shop_Aside_BoardReadService RS = new Shop_Aside_BoardReadService();
		RS.readarticle(pd_name);
		request.setAttribute("articleList", articlList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/Shop_List.jsp");
  		
		return forward;
	}
}
