package com.dogpark.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dogpark.dao.Dao;
import com.dogpark.dto.ActionForward;
import com.dogpark.dto.Dto;
import com.dogpark.service.SignProService;

public class SignProAction implements Action {
	int a = 1;

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward=null;
		PrintWriter out = response.getWriter();
		Dto dto = null;
		ServletContext context = request.getServletContext();
		
		dto = new Dto();
		String id = request.getParameter("u_id");
		dto.setId(id);
		dto.setPwd(request.getParameter("u_pw"));
		dto.setEmail(request.getParameter("u_email"));
		dto.setNickname(request.getParameter("u_nickname"));
		
		SignProService signProService = new SignProService();
		
		String signId = signProService.checkInfo(dto);
		//현재페이지
		String before_address = request.getHeader("referer");
		
		if(id.equals(signId)) {
			System.out.println("중복");
			
			out.print("<script>");
			out.print("alert('id중복');");
			out.print("history.back();");
			out.print("</script>");
			
		}
		else 
		{
			
		signProService.insertInfo(dto);
		
		forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath(before_address);
		}
		
		return forward;
	}
}
