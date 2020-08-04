package com.dogpark.controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dogpark.dto.ActionForward;
import com.dogpark.action.*;
@WebServlet("*.bo")
public class Controller extends javax.servlet.http.HttpServlet 
{
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String RequestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command=RequestURI.substring(contextPath.length());
		ActionForward forward=null;
		Action action=null;
		
		// ȸ������, �α��� -------------------------------------------------------------
		if(command.equals("/SignPro.bo")){
			action  = new SignProAction();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/LoginPro.bo")){
			action  = new LoginProAction();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// Honeytip �Խ��� -----------------------------------------------------------------
		else if(command.equals("/boardWriteForm.bo")){
			forward=new ActionForward();
			forward.setPath("/qna_board_write.jsp");
		}
		
		else if(command.equals("/boardList.bo")){
			System.out.println("�Ͷ�");
			action = new BoardListAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/boardWritePro.bo")){
			action  = new HT_BoardWriteAction();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/boardread.bo")){
			action = new HT_BoardReadAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		else if(command.equals("/boardmodify.bo")){
			System.out.println("��Ʈ�Ѻ� üũ");
			action = new HT_BoardModifyReadAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		else if(command.equals("/ht_updateprocess.bo")){
			action = new HT_BoardModifyProAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		else if(command.equals("/ht_delete.bo")){
			action = new HT_BoardDeleteAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		// �������� �Խ��� ----------------------------------------------------------
		else if(command.equals("/notice_list.bo")){
			System.out.println("��Ʈ�� �Գ�?");
			action = new Nt_BoardListAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		// �ݷ��� �ڶ� �Խ���--------------------------------------------------------
		else if(command.equals("/dj_boardList.bo")){
			action = new DJ_BoardListAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		else if(command.equals("/dj_boardread.bo")){
			action = new DJ_BoardReadAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		else if(command.equals("/dj_boardWritePro.bo")){
			action  = new DJ_BoardWriteAction();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
//			else if(command.equals("/boardDeleteForm.bo")){
//			String nowPage = request.getParameter("page");
//			request.setAttribute("page", nowPage);
//			int board_num=Integer.parseInt(request.getParameter("board_num"));
//			request.setAttribute("board_num",board_num);
//			forward=new ActionForward();
//			forward.setPath("/qna_board_delete.jsp");
//		}
//		else if(command.equals("/boardDeletePro.bo")){
//			action = new BoardDeleteProAction();
//			try{
//				forward=action.execute(request, response);
//			}catch(Exception e){
//				e.printStackTrace();
//			}
//		}
//		
//		else if(command.equals("/boardlogin.bo")) {
//			action = new BoardLoginAction();
//			try{
//				forward=action.execute(request, response);
//			}catch(Exception e){
//				e.printStackTrace();
//			}
//		}
//		
		if(forward != null){
			
			if(forward.isRedirect()){
				response.sendRedirect(forward.getPath());
			}else{
				RequestDispatcher dispatcher=
						request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
			
		}
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request,response);
	}  	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request,response);
	}   
	
}