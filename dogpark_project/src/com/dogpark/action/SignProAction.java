package com.dogpark.action;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.Dto;
import com.dogpark.service.SignProService;

public class SignProAction implements Action {
	int a = 1;

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward=null;
		Dto dto = null;
		
		ServletContext context = request.getServletContext();

		dto = new Dto();
		dto.setU_id(request.getParameter("u_id"));
		dto.setU_pw(request.getParameter("u_pw"));
		dto.setU_email(request.getParameter("u_email"));
		dto.setU_nickname(request.getParameter("u_nickname"));
		
//		HttpSession session = request.getSession();
//		session.setAttribute("id", dto.getU_id());	//id라는 세션에 게터에있는 id값을 갖고옴. 회원가입에서는 필요없음
	
		System.out.println("ㅇㅇ?");
		SignProService signProService = new SignProService();
		signProService.insertInfo(dto);
		forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("mainPage.html");


		return forward;
	}
}
