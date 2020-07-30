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
		dto.setU_id(id);
		dto.setU_pw(request.getParameter("u_pw"));
		dto.setU_email(request.getParameter("u_email"));
		dto.setU_nickname(request.getParameter("u_nickname"));
		
//		HttpSession session = request.getSession();
//		session.setAttribute("id", dto.getU_id());	//id라는 세션에 게터에있는 id값을 갖고옴.
		
		SignProService signProService = new SignProService();
		
		String signId = signProService.checkInfo(dto);
		//System.out.println(articleList.size() + "cnt");
		
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
		forward.setPath("mainPage.html");
		}
		
		return forward;
	}
}
