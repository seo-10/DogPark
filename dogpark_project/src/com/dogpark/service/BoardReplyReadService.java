package com.dogpark.service;

import java.util.List;

import com.dogpark.dao.DogSaleDao;
import com.dogpark.dto.ReplyDto;

public class BoardReplyReadService {
	DogSaleDao dao= new DogSaleDao();
	List<ReplyDto> replyList=null;
	public List<ReplyDto> boradreplylist(){
		 replyList=dao.selectreply();
		
		 return replyList;
	}
}
