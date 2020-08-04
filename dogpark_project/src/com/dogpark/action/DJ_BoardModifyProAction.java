package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.DogjarangDto;
import com.dogpark.service.DJ_BoardModifyProService;
import com.dogpark.service.DJ_BoardModifyReadService;

public class DJ_BoardModifyProAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// �ڵ� ���� ������ ������ͼ� ��� �� ������ �����ϰ� ������ ���� DB�� �ֱ� ���� �׼�
		DogjarangDto dto =new DogjarangDto();
		int code =Integer.parseInt(request.getParameter("code_no"));
		String contents= request.getParameter("ht_read_contents");
		dto.setCode_no(code);
		dto.setDj_contents(contents);
		DJ_BoardModifyProService boardmodifyproService = new DJ_BoardModifyProService();
		boardmodifyproService.modifyService(dto);
		List<DogjarangDto> articleList=new ArrayList<DogjarangDto>();
		//�� ���� �� read ���񽺸� ȣ���Ͽ� ������ ȭ�� ���
		DJ_BoardModifyReadService boardmodifyreadService = new DJ_BoardModifyReadService();
		articleList=boardmodifyreadService.DJ_modifyselectService(code);
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/HT_Read.jsp");
		return forward;
	}

}
