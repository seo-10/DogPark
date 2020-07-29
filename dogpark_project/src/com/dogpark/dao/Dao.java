package com.dogpark.dao;

import static com.dogpark.dbconnect.JdbcUtil.close;
import static com.dogpark.dbconnect.JdbcUtil.commit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.activation.DataSource;

import com.dogpark.dto.BoardBean;

public class Dao {
	DataSource ds;
	Connection con;
	private static Dao boardDAO;

	private Dao() {
	}

	public static Dao getInstance(){
		if(boardDAO == null){
			boardDAO = new Dao();
		}
		return boardDAO;
	}
	
	public void setConnection(Connection con){
		this.con = con;
	}
	
	public int selectListCount() {

		int listCount= 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try{
			pstmt=con.prepareStatement("select count(*) from honey_tip");
			rs = pstmt.executeQuery();

			if(rs.next()){
				listCount=rs.getInt(1);
			}
		}catch(Exception ex){

		}finally{
			close(rs);
			close(pstmt);
		}

		return listCount;

	}
	
	public ArrayList<BoardBean> selectArticleList(int page,int limit){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String board_list_sql="select * from honey_tip order by code_no asc limit ?,10";
		ArrayList<BoardBean> articleList = new ArrayList<BoardBean>();
		BoardBean board = null;
		int startrow=(page-1)*10;

		try{
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, startrow);
			rs = pstmt.executeQuery();

			while(rs.next()){
				board = new BoardBean();
				board.setCode_no(rs.getInt("code_no"));
				board.setU_id(rs.getString("u_id"));
				board.setHt_title(rs.getString("ht_title"));
				board.setHt_contents(rs.getString("ht_contents"));
				board.setHt_file(rs.getString("ht_file"));
				board.setHt_view(rs.getInt("ht_view"));
				board.setDate11(rs.getString("date11"));
				articleList.add(board);
			}

		}catch(Exception ex){
		}finally{
			close(rs);
			close(pstmt);
		}

		return articleList;

	}
	
	public BoardBean selectArticle(int code_no){

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardBean boardBean = null;

		try{
			pstmt = con.prepareStatement("select * from honey_tip where code_no = ?");
			pstmt.setInt(1, code_no);
			rs= pstmt.executeQuery();

			if(rs.next()){
				boardBean = new BoardBean();
				boardBean.setCode_no(rs.getInt("code_no"));
				boardBean.setU_id(rs.getString("u_id"));
				boardBean.setHt_title(rs.getString("ht_title"));
				boardBean.setHt_contents(rs.getString("ht_contents"));
				boardBean.setHt_file(rs.getString("ht_file"));
				boardBean.setHt_view(rs.getInt("ht_view"));
				boardBean.setDate11(rs.getString("date11"));
			}
		}catch(Exception ex){
		}finally{
			close(rs);
			close(pstmt);
		}

		return boardBean;

	}
}
