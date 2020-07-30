package com.dogpark.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;


public class HT_BoardWriteAction {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	String title= request.getParameter("ht_title");
	String contents= request.getParameter("ht_contents");
	String file= request.getParameter("ht_file");
	String writer= request.getParameter("ht_writer");

	RequestDispatcher dispatcher = request.getRequestDispatcher("honeytip_login_select.jsp");
	dispatcher.forward(request, response);
	}
}
