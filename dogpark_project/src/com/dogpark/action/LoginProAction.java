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
		
		
		
		LoginProService loginProService = new LoginProService();
		List<Dto> articleList = loginProService.checkInfo(id);
		
				
		//System.out.println("getter : " + dto.getU_id());
		System.out.println("articleList : " + articleList.size());

		
		if(!id.equals(articleList.get(0).getId())) {
			System.out.println("id");
			
			out.print("<script>");
			out.print("alert('id�� Ȯ�����ּ���');");
			out.print("history.back();");
			out.print("</script>");
		}
		else if(!pw.equals(articleList.get(0).getPwd())) {
			System.out.println("pw");
			
			out.print("<script>");
			out.print("alert('��й�ȣ�� Ȯ�����ּ���');");
			out.print("history.back();");
			out.print("</script>");
		}
		else if(id.equals(articleList.get(0).getId()) && pw.equals(articleList.get(0).getPwd())) {
			System.out.println("�α��μ���");
			
			HttpSession session = request.getSession();
			session.setAttribute("id", dto.getId());	//id��� ���ǿ� ���Ϳ��ִ� id���� �����.
			
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("mainPage_login.jsp");
			
		}
			return forward;
		
	}
}
