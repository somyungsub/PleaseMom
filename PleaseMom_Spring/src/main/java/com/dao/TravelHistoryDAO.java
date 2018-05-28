package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exception.CommonException;

@Repository
public class TravelHistoryDAO {

	@Autowired
	SqlSessionTemplate template;

	public void insert(int request_num, int guider_num, int scb_num) throws CommonException {
		HashMap<String, Integer> map = new HashMap<>();
		map.put("th_req_num", request_num);
		map.put("th_gui_num", guider_num);
		map.put("th_scb_num", scb_num);
		template.insert("travelHistory.insertTravelHistory", map);
	}

	// 내가 요청한(request) 게시글 찾기
	public List<Integer> mediateInfoRequestList(int mem_num) throws CommonException {
		List<Integer> list = template.selectList("travelHistory.requestList", mem_num);
		return list;
	}

	// 내가 작성한(guider) 게시글 찾기
	public List<Integer> mediateInfoGuiderList(int mem_num) throws CommonException {
		List<Integer> list = template.selectList("travelHistory.guiderList", mem_num);
		return list;
	}

	// 요청자 정보 얻기
	public int selectRequestNum(int scb_num) throws CommonException {
		int num = template.selectOne("travelHistory.selectRequestNum", scb_num);
		return num;
	}

	// 가이더 정보 얻기
	public int selectGuiderNum(int scb_num) throws CommonException {
		int num = template.selectOne("travelHistory.selectGuiderNum", scb_num);
		return num;
	}

	// 삭제하기
	public int delete(HashMap<String, Integer> caseMap) throws CommonException {
		int n = template.delete("travelHistory.delete", caseMap);
		return n;
	}

	// 승인완료
	public int confirm(HashMap<String, Integer> caseMap) throws CommonException {
		int n = template.update("travelHistory.confirm", caseMap);
		return n;
	}
}
