package com.dogpark.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.Dto;
import com.dogpark.service.LoginProService;

public class LoginProAction implements Action {
	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward=null;
		PrintWriter out = response.getWriter();
		Dto dto = new Dto();

		
		ServletContext context = request.getServletContext();
		
		String id = request.getParameter("login_id");
		String pw = request.getParameter("login_pw");
		
		LoginProService loginProService = new LoginProService();
		List<Dto> articleList = loginProService.checkInfo(id);
		
				
		//System.out.println("getter : " + dto.getU_id());
		System.out.println("articleList : " + articleList.size());

		
		
		
		if(!id.equals(articleList.get(0).get_id())) {
			System.out.println("id");
			
			out.print("<script>");
			out.print("alert('id를 확인해주세요');");
			out.print("history.back();");
			out.print("</script>");
		}
		else if(!pw.equals(articleList.get(0).get_pwd())) {
			System.out.println("pw");
			
			out.print("<script>");
			out.print("alert('비밀번호를 확인해주세요');");
			out.print("history.back();");
			out.print("</script>");
		}
		else if(id.equals(articleList.get(0).get_id()) && pw.equals(articleList.get(0).get_pwd())) {
			System.out.println("로그인성공");
			
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("mainPage_login.jsp");
			
		}
			return forward;
		
	}
}
