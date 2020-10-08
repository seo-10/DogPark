package com.dogpark.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BuyListDto;
import com.dogpark.service.Shop_BuyList_InsertService;

public class Shop_BuyListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		
		String u_id = (String)session.getAttribute("id"); 
		String cart_name= request.getParameter("cart_name");
		System.out.println(u_id);
		BuyListDto dto = new BuyListDto();
		
		dto.setU_id(u_id);
		dto.setCart_name(cart_name);
		
		Shop_BuyList_InsertService shopBuyList = new Shop_BuyList_InsertService();
		shopBuyList.buyListInsert_article(dto);

		ActionForward forward= new ActionForward();
		forward.setPath("shop_list.bo");
		return forward;
		}

}
