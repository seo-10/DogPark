package com.dogpark.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.dogpark.dto.BreedingDto;
import com.dogpark.dto.CafeDto;

public class DogLifeDao {
	static SqlSessionFactory sqlfactory;
	// �̱��� ����(����) = ��ü�� �ѹ��� ����� ��� ��밡�� static�� �ʼ��� �پ����.
	private static DogLifeDao instance;

	public static DogLifeDao getinstance() {
		if (instance == null) {
			synchronized (Dao.class) {
				instance = new DogLifeDao();
			}
		}
		return instance;
	}

	public static SqlSessionFactory getConn() {
		try {
			Reader reader = Resources.getResourceAsReader("com/dogpark/dao/mybatis-config.xml");
			sqlfactory = new SqlSessionFactoryBuilder().build(reader);// ����
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sqlfactory;
	}
	
	
	//�긮��
		public List<BreedingDto> breedingdao(int page) {
			List<BreedingDto> articleList = null;
			SqlSessionFactory sqlfactory = DogLifeDao.getConn();
			SqlSession sqlsession = sqlfactory.openSession();
			int startrow=(page-1)*8;
			articleList = sqlsession.selectList("BreedingSelect" , startrow);
			sqlsession.close();
			return articleList;
		}
		public List<BreedingDto> breedingsearchdao(int page,String id) {
			List<BreedingDto> articleList = null;
			SqlSessionFactory sqlfactory = DogLifeDao.getConn();
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
			SqlSessionFactory sqlfactory = DogLifeDao.getConn();
			SqlSession sqlsession = sqlfactory.openSession();
			
			List<CafeDto> cafename= sqlsession.selectList("CafeDetailSelect",dto);
			sqlsession.commit();
			sqlsession.close();
			System.out.println("ī��Dao");
			return cafename;
		
		}
		public int selectDogListCount() {
			int listCount= 0;
			SqlSessionFactory sqlfactory = DogLifeDao.getConn();
			SqlSession sqlsession = sqlfactory.openSession();

			listCount=sqlsession.selectOne("Breedingcount");
			
			sqlsession.close();
			return listCount;
		}
}
