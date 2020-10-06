package com.dogpark.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.DogjarangDto;
import com.dogpark.dto.Dogpark_dogsDto;
import com.dogpark.service.DSB_BoardWriteService;


public class DSB_BoardWriteAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	String dpd_name= request.getParameter("dsb_dpd_name");
	String dpd_character =  request.getParameter("dsb_dpd_character");
	String dpd_classify =  request.getParameter("dsb_dpd_classify");
	String dpd_species = request.getParameter("dsb_dpd_species");
	String dpd_sex =  request.getParameter("dsb_dpd_sex");
	String dpd_year= request.getParameter("dsb_dpd_year");
	String dpd_month= request.getParameter("dsb_dpd_month");
	String dpd_day= request.getParameter("dsb_dpd_day");
	//String dpd_img= request.getParameter("dsb_dpd_img");
	
	Dogpark_dogsDto dto = new Dogpark_dogsDto();
	
	dto.setDpd_name(dpd_name);
	dto.setDpd_character(dpd_character);
	dto.setDpd_classify(dpd_classify);
	dto.setDpd_img("1");
	dto.setDpd_sex(dpd_sex);
	dto.setDpd_year(dpd_year);
	dto.setDpd_month(dpd_month);
	dto.setDpd_day(dpd_day);
	dto.setDpd_species(dpd_species);
	
	DSB_BoardWriteService BWS = new DSB_BoardWriteService();
	BWS.dsb_boardwritearticle(dto);

	ActionForward forward= new ActionForward();
	forward.setPath("dsb_boardList.bo");
	return forward;
	}
}
