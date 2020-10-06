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
		
		// �Ѿ�� �����͸� dto�� ����
		ReplyDto dto = new ReplyDto();
		dto.setBoard_name(request.getParameter("dpd_name"));
		dto.setUser_id(request.getParameter("id"));
		dto.setReply_content(request.getParameter("reply_content"));
		
		// db ������ ���� dao�� ������ ����
		DogSaleDao manager = new DogSaleDao();
		manager.insertReply(dto);
		return null;
	}

}
