package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.Dto;
import com.dogpark.dto.ShopDto;
import com.dogpark.service.Shop_BoardReadService;
import com.dogpark.service.Shop_BuyService;

public class Shop_BuyAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pd_name = request.getParameter("pd_name");
		List<ShopDto> articlList=new ArrayList<ShopDto>();
		Shop_BuyService RS = new Shop_BuyService();
		articlList=RS.readarticle(pd_name);
		request.setAttribute("articleList", articlList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/Shop_Buy.jsp");
  		
		return forward;
	}
}
