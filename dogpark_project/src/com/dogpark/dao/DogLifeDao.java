package com.dogpark.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dogpark.dto.BreedingDto;
import com.dogpark.dto.CafeDto;

public class DogLifeDao {
	//�긮��
		public List<BreedingDto> breedingdao(int page) {
			List<BreedingDto> articleList = null;
			SqlSessionFactory sqlfactory = Dao.getConn();
			SqlSession sqlsession = sqlfactory.openSession();
			int startrow=(page-1)*8;
			articleList = sqlsession.selectList("BreedingSelect" , startrow);
			sqlsession.close();
			return articleList;
		}
		public List<BreedingDto> breedingsearchdao(int page,String id) {
			List<BreedingDto> articleList = null;
			SqlSessionFactory sqlfactory = Dao.getConn();
			SqlSession sqlsession = sqlfactory.openSession();
			System.out.println("dao id�����"+id);
			int startrow=(page-1)*8;
			articleList = sqlsession.selectList("BreedingSearch" , id);
			System.out.println("Dao"+articleList.get(0).getU_id());
			sqlsession.close();
			return articleList;
		}
		/*ī�� */
		public List<CafeDto> cafedetaildao(CafeDto dto) {
			SqlSessionFactory sqlfactory = Dao.getConn();
			SqlSession sqlsession = sqlfactory.openSession();
			
			List<CafeDto> cafename= sqlsession.selectList("CafeDetailSelect",dto);
			sqlsession.commit();
			sqlsession.close();
			System.out.println("ī��Dao");
			return cafename;
		
		}
		public int selectDogListCount() {
			int listCount= 0;
			SqlSessionFactory sqlfactory = Dao.getConn();
			SqlSession sqlsession = sqlfactory.openSession();

			listCount=sqlsession.selectOne("Breedingcount");
			
			sqlsession.close();
			return listCount;
		}
}
