package com.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.exception.CommonException;


public class TravelHistoryService {

	public void insert(int request_num, int guider_num, int scb_num) throws CommonException {
		SqlSession session=MySqlSessionFactory.getSession();
		HashMap<String, Integer> map=new HashMap<>();
		map.put("th_req_num", request_num);
		map.put("th_gui_num", guider_num);
		map.put("th_scb_num", scb_num);
		try {
			session.insert("travelHistory.insertTravelHistory",map);
			session.commit();
		} 
		catch(Exception e){
			e.printStackTrace();
			throw new CommonException("Travel_History Table Insert Failed");
		}
		finally {
			session.close();
		}
		
	}
	//내가 요청한(request) 게시글 찾기
	public List<Integer> mediateInfoRequestList(int mem_num) throws CommonException {
		SqlSession session=MySqlSessionFactory.getSession();
		List<Integer> list=null;
		try {
			list=session.selectList("travelHistory.requestList",mem_num);
			System.out.println("listRequest==="+list);
		} 
		catch(Exception e){
			e.printStackTrace();
			throw new CommonException("request정보찾기 실패");
		}
		finally {
			session.close();
		}
		return list;
	}
	//내가 작성한(guider) 게시글 찾기
	public List<Integer> mediateInfoGuiderList(int mem_num) throws CommonException {
		SqlSession session=MySqlSessionFactory.getSession();
		List<Integer> list=null;
		try {
			list=session.selectList("travelHistory.guiderList",mem_num);
			System.out.println("listGuider==="+list);
		} 
		catch(Exception e){
			e.printStackTrace();
			throw new CommonException("guider 정보찾기 실패");
		}
		finally {
			session.close();
		}
		return list;
	}
	//요청자 정보 얻기
	public int selectRequestNum(int scb_num) throws CommonException {
		SqlSession session=MySqlSessionFactory.getSession();
		int num=0;
		try {
			num=session.selectOne("travelHistory.selectRequestNum",scb_num);
		}
		catch(Exception e){
			e.printStackTrace();
			throw new CommonException("Request 번호 얻기 실패");
		}
		finally {
			session.close();
		}
		
		return num;
	}
	//가이더 정보 얻기
	public int selectGuiderNum(int scb_num) throws CommonException {
		SqlSession session=MySqlSessionFactory.getSession();
		int num=0;
		try {
			num=session.selectOne("travelHistory.selectGuiderNum",scb_num);
		}
		catch(Exception e){
			e.printStackTrace();
			throw new CommonException("Guider 번호 얻기 실패");
		}
		finally {
			session.close();
		}
		
		return num;
	}
	//삭제하기
	public int delete(HashMap<String, Integer> caseMap) throws CommonException {
		SqlSession session=MySqlSessionFactory.getSession();
		int n=0;
		try {
			n=session.delete("travelHistory.delete",caseMap);
			session.commit();
		}
		catch(Exception e){
			e.printStackTrace();
			throw new CommonException("TravelHistory 삭제 실패");
		}
		finally {
			session.close();
		}
		return n;
	}
	//승인완료
	public int confirm(HashMap<String, Integer> caseMap) throws CommonException {
		SqlSession session=MySqlSessionFactory.getSession();
		int n=0;
		try {
			n=session.update("travelHistory.confirm",caseMap);
			session.commit();
		}
		catch(Exception e){
			e.printStackTrace();
			throw new CommonException("TravelHistory 승인 실패");
		}
		finally {
			session.close();
		}
		return n;
	}
	
}
