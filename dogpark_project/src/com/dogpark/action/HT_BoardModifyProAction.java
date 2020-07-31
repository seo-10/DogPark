package com.dogpark.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.dto.BoardBean;
import com.dogpark.service.BoardModifyProService;
import com.dogpark.service.BoardModifyReadService;

public class HT_BoardModifyProAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 코드 값과 내용을 가지고와서 출력 후 내용을 수정하고 수정된 값을 DB에 넣기 위한 액션
		BoardBean dto =new BoardBean();
		int code =Integer.parseInt(request.getParameter("code_no"));
		String contents= request.getParameter("ht_read_contents");
		dto.setCode_no(code);
		dto.setHt_contents(contents);
		BoardModifyProService boardmodifyproService = new BoardModifyProService();
		boardmodifyproService.modifyService(dto);
		List<BoardBean> articleList=new ArrayList<BoardBean>();
		//글 수정 후 read 서비스를 호출하여 수정된 화면 출력
		BoardModifyReadService boardmodifyreadService = new BoardModifyReadService();
		articleList=boardmodifyreadService.modifyselectService(code);
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
  		forward.setPath("/HT_Read.jsp");
		return forward;
	}

}
