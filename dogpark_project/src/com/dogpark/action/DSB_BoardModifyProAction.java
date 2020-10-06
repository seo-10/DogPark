package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.Dogpark_dogsDto;
import com.dogpark.service.DSB_BoardModifyProService;
import com.dogpark.service.DSB_BoardModifyReadService;

public class DSB_BoardModifyProAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 코드 값과 내용을 가지고와서 출력 후 내용을 수정하고 수정된 값을 DB에 넣기 위한 액션
		Dogpark_dogsDto dto =new Dogpark_dogsDto();
		String dpd_name =request.getParameter("dpd_name");
		String dpd_character= request.getParameter("dsb_dpd_character");
		dto.setDpd_name(dpd_name);
		dto.setDpd_character(dpd_character);
		DSB_BoardModifyProService boardmodifyproService = new DSB_BoardModifyProService();
		boardmodifyproService.modifyService(dto);
		List<Dogpark_dogsDto> articleList=new ArrayList<Dogpark_dogsDto>();
		//글 수정 후 read 서비스를 호출하여 수정된 화면 출력
		DSB_BoardModifyReadService boardmodifyreadService = new DSB_BoardModifyReadService();
		articleList=boardmodifyreadService.DSB_modifyselectService(dpd_name);
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/DSB_Read.jsp");
		return forward;
	}

}
