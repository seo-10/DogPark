package com.dogpark.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.CafeDto;
import com.dogpark.service.CafeDetailService;
import com.dogpark.service.Nt_BoardWriteService;

public class Cafe_detailAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	String cafename= request.getParameter("cafe_name");
	
	CafeDto cafedto = new CafeDto();
	
	cafedto.setCafe_name(cafename);
	
	CafeDetailService CDS = new CafeDetailService();
	List<CafeDto> list=CDS.cafedetailarticle(cafedto);
	request.setAttribute("cafename", list);

	ActionForward forward= new ActionForward();
	forward.setPath("/Cafe_detail.jsp");
	System.out.println("카페액션");
	System.out.println(cafename+"카페명");
	return forward;
	}

}
