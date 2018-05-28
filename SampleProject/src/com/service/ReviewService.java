package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.ReviewDTO;
import com.exception.CommonException;

public class ReviewService {
	public List<ReviewDTO> reviewList(int mem_num) throws CommonException{
		SqlSession session = MySqlSessionFactory.getSession();
		List<ReviewDTO> list = null;
		try {
			list = session.selectList("review.reviewList", mem_num);
			//String str = session.selectOne("review.ri"); 
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("리뷰 목록 불러오기 실패");
		} finally {
			session.close();
		}
		return list;
	}
	
	public List<String> airportList(List<Integer> airportList) throws CommonException{
		SqlSession session = MySqlSessionFactory.getSession();
		List<String> list = null;
		if (airportList.size() == 0 || airportList == null) {
			airportList.add(-1);
		}
		try {
			list = session.selectList("review.airportList", airportList);
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("공항 목록 불러오기 실패");
		} finally {
			session.close();
		}
		return list;
	}
	
	public List<ReviewDTO> reviewAllList() throws CommonException{
		SqlSession session = MySqlSessionFactory.getSession();
		List<ReviewDTO> list = null;
		try {
			list = session.selectList("review.reviewList");
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("리뷰 목록 불러오기 실패");
		} finally {
			session.close();
		}
		return list;
	}
}
