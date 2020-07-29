package com.dogpark.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.Dto;

public class SignProAction implements Action {
	int a = 1;

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward=null;
		Dto dto = null;
		
		ServletContext context = request.getServletContext();

		dto = new Dto();
		dto.setBOARD_NAME(multi.getParameter("BOARD_NAME"));
		dto.setBOARD_PASS(multi.getParameter("BOARD_PASS"));
		dto.setBOARD_SUBJECT(multi.getParameter("BOARD_SUBJECT"));
		dto.setBOARD_CONTENT(multi.getParameter("BOARD_CONTENT"));


		BoardWriteProService boardWriteProService = new BoardWriteProService();
		boolean isWriteSuccess = boardWriteProService.registArticle(boardBean);
		System.out.println(isWriteSuccess);
		if(!isWriteSuccess){
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('등록실패')");
			out.println("history.back();");
			out.println("</script>");
		}
		else{
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("boardList.bo");
		}

		return forward;
	}
}
