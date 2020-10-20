package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.Dogpark_dogsDto;
import com.dogpark.dto.ReplyDto;
import com.dogpark.service.BoardReplyReadService;
import com.dogpark.service.DSB_BoardReadService;

public class DSB_BoardReadAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String dpd_name = request.getParameter("dpd_name");
		List<Dogpark_dogsDto> articlList=new ArrayList<Dogpark_dogsDto>();
		List<ReplyDto> replyList=new ArrayList<ReplyDto>();
		DSB_BoardReadService RS = new DSB_BoardReadService();
		articlList=RS.readarticle(dpd_name);
		BoardReplyReadService replyreadservice= new BoardReplyReadService();
		replyList=replyreadservice.boradreplylist();
		request.setAttribute("replyList", replyList);
		request.setAttribute("articleList", articlList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/DSB_Read.jsp");
  		
		return forward;
	}
}
