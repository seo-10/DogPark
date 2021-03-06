package com.dogpark.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		dto.setId(id);
		String pw = request.getParameter("login_pw");
		//현재페이지
		String before_address = request.getHeader("referer");
		
		
		LoginProService loginProService = new LoginProService();
		List<Dto> articleList = loginProService.checkInfo(id);
		
		
		if(!id.equals(articleList.get(0).getId())) {
		
			out.print("<script>");
			out.print("alert('Please check your ID');");
			out.print("history.back();");
			out.print("</script>");
		}
		else if(!pw.equals(articleList.get(0).getPwd())) {
			
			out.print("<script>");
			out.print("alert('Please check your Password');");
			out.print("history.back();");
			out.print("</script>");
		}
		else if(id.equals(articleList.get(0).getId()) && pw.equals(articleList.get(0).getPwd())) {
			System.out.println("로그인성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("id", dto.getId());	//id라는 세션에 게터에있는 id값을 갖고옴.
			
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(before_address);
			
		}
			return forward;
		
	}
}
