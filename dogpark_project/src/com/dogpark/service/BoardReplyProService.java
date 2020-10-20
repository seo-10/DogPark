package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.DogSaleDao;
import com.dogpark.dto.ReplyDto;

public class BoardReplyProService {
	DogSaleDao dao= new DogSaleDao();
	List<ReplyDto> replyList=null;
	public List<ReplyDto> boardreplywriteservice(ReplyDto dto) {
		System.out.println("댓글 기능 서비스부");
		System.out.println(dto.getUser_id());
		System.out.println(dto.getReply_content());
		dao.insertReply(dto);
		replyList=dao.selectreply();
		return replyList;
	}
	
}
