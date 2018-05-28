package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.ReviewDTO;
import com.exception.CommonException;

@Repository
public class ReviewDAO {

	@Autowired
	SqlSessionTemplate template;
	static Logger logger = LoggerFactory.getLogger(ReviewDAO.class);

	public List<ReviewDTO> reqRievewList(int mem_num) throws CommonException{
		List<ReviewDTO>list = template.selectList("review.reqReviewList", mem_num);
		return list;
	}
	
	public List<ReviewDTO> guiRievewList(int mem_num) throws CommonException{
		List<ReviewDTO>list = template.selectList("review.guiReviewList", mem_num);
		return list;
	}
	
	public List<String> airportList(List<Integer> airportList) throws CommonException{
		if (airportList.size() == 0 || airportList == null) {
			airportList.add(-1);
		}
		List<String> list = template.selectList("review.airportList", airportList);
		return list;
	}
	
	public void writeReview(ReviewDTO dto){
		int n = template.insert("review.writeReview",dto);
	}
}
