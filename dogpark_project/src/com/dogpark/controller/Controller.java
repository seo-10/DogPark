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
		
		// 회원가입, 로그인 -------------------------------------------------------------
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
		// Honeytip 게시판 -----------------------------------------------------------------
		else if(command.equals("/boardWriteForm.bo")){
			forward=new ActionForward();
			forward.setPath("/HT_Write.jsp");
		}
		
		else if(command.equals("/boardList.bo")){
			System.out.println("와라");
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
			System.out.println("컨트롤부 체크");
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
		
		// 공지사항 게시판 ----------------------------------------------------------
		else if(command.equals("/notice_list.bo")){
			action = new Nt_BoardListAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		else if(command.equals("/notice_WritePro.bo")){
			action  = new Nt_BoardWriteAction();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/notice_boardread.bo")){
			action = new Nt_BoardReadAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		// 반려견 자랑 게시판--------------------------------------------------------
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
		else if(command.equals("/dj_boardmodify.bo")){
			System.out.println("컨트롤부 체크");
			action = new DJ_BoardModifyReadAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		else if(command.equals("/dj_updateprocess.bo")){
			action = new DJ_BoardModifyProAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		else if(command.equals("/dj_delete.bo")){
			action = new DJ_BoardDeleteAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		// 브리딩 --------------------------------------------------------
		else if(command.equals("/Breeding.bo")) {
			action = new BreedingAction();
			try {
				forward=action.execute(request, response);
			}catch(Exception e) {
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