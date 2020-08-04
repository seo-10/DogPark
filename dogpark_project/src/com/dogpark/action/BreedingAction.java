package com.dogpark.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;
import com.dogpark.service.BreedingService;

public class BreedingAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("¾×¼ÇºÎ");
		List<BoardBean> articleList=new ArrayList<BoardBean>();
		BreedingService breedingservice = new BreedingService();
		articleList=breedingservice.ListService();
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/Breeding.jsp");
		
  		return forward;
		
	
	}
	
}