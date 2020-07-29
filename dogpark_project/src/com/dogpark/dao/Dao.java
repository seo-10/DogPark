package com.dogpark.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.dogpark.dto.BoardBean;

public class Dao {
	static SqlSessionFactory sqlfactory;
	//싱글톤 패턴(관리) = 객체를 한번만 만들어 계속 사용가능 static이 필수로 붙어야함.
	private static Dao instance;
	
	public static Dao getinstance() {
		if(instance == null) {
			synchronized (Dao.class) {
				instance = new Dao();
			}
		}
		return instance;
	}
	public static SqlSessionFactory getConn() {
		try {
			Reader reader = Resources.getResourceAsReader("DAO/Mybatis/mybatis-config.xml");
			sqlfactory = new SqlSessionFactoryBuilder().build(reader);// 연결
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sqlfactory;
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
