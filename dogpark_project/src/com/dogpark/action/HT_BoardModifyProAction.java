package com.dogpark.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;
import com.dogpark.service.BoardModifyProService;
import com.dogpark.service.BoardModifyService;

public class HT_BoardModifyProAction implements Action {
	List<BoardBean> articleList=null;
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		BoardBean dto =new BoardBean();
		int code =Integer.parseInt(request.getParameter("code_no"));
		String contents= request.getParameter("ht_read_contents");
		dto.setCode_no(code);
		dto.setHt_contents(contents);
		BoardModifyProService boardmodifyreadService = new BoardModifyProService();
		articleList=boardmodifyreadService.modifyService(dto);
		ActionForward forward= new ActionForward();
  		forward.setPath("/HT_Update.jsp");
		return forward;
	}

}
