package com.dogpark.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dao.DogSaleDao;
import com.dogpark.dto.ActionForward;
import com.dogpark.dto.ReplyDto;

public class DSB_ReplyWriteAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		// 넘어온 데이터를 dto에 저장
		ReplyDto dto = new ReplyDto();
		dto.setBoard_name(request.getParameter("dpd_name"));
		dto.setUser_id(request.getParameter("id"));
		dto.setReply_content(request.getParameter("reply_content"));
		
		// db 저장을 위한 dao에 데이터 전달
		DogSaleDao manager = new DogSaleDao();
		manager.insertReply(dto);
		return null;
	}

}
