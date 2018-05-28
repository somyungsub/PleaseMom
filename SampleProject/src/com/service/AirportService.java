package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.AirportInfoDTO;

public class AirportService {
	public List<AirportInfoDTO> airportSearch(String name){
		SqlSession session = MySqlSessionFactory.getSession();
		List<AirportInfoDTO> list = null;
		try {
			list = session.selectList("airport.search", name);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	public List<AirportInfoDTO> nationSearch(String name){
		SqlSession session = MySqlSessionFactory.getSession();
		List<AirportInfoDTO> list = null;
		try {
			list = session.selectList("airport.nationSearch", name);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	//공항이름으로 국가 이름 찾기
	public String airportSearchCountry(String scb_to) {
		SqlSession session = MySqlSessionFactory.getSession();
		String country=null;
		try {
			country = session.selectOne("airport.searchCountry", scb_to);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return country;
	}
}
