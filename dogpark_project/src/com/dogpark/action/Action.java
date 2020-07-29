package com.dogpark.action;

import javax.servlet.http.*;

import com.dogpark.dto.ActionForward;

public interface Action {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception;
}
