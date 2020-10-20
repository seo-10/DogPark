package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.ReplyDto;
import com.dogpark.service.BoardReplyProService;
import com.dogpark.service.BoardReplyReadService;


public class BoardReplyProAction implements Action {
	List<ReplyDto> replyList=new ArrayList<ReplyDto>();
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ReplyDto dto= new ReplyDto();
		System.out.println("댓글 기능 액션부");
		String user_id=request.getParameter("user_id");
		String reply_content=request.getParameter("reply_content");
		System.out.println(user_id);
		System.out.println(reply_content);
		dto.setUser_id(user_id);
		dto.setReply_content(reply_content);
		BoardReplyProService replyservice= new BoardReplyProService();
		List<ReplyDto> replyList =replyservice.boardreplywriteservice(dto);
		
		request.setAttribute("replyList", replyList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/DSB_Read.jsp");
		
		return forward;
	}

}
