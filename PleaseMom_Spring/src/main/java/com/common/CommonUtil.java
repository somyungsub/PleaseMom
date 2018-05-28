package com.common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.dto.ReviewDTO;

public class CommonUtil {
	public static String javaToOracleDate(String birthYear, String birthMonth, String birthDate){
		String date = birthYear + "/" + birthMonth + "/" + birthDate;
		
		return date;
	}
	
	public static String getBirthYear(String str){
		String year = str.substring(0, 3);
		
		return year;
	}
	
	public static String differenceDate(String date) throws ParseException{
		String wdate = date.substring(0, 10);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date beginDate = sdf.parse(wdate);
		
		String sysdate = sdf.format(new Date());
		Date endDate = sdf.parse(sysdate);
		
		long diff = endDate.getTime() - beginDate.getTime();
        long diffDays = diff / (24 * 60 * 60 * 1000);
        
        String str = "";
        if (diffDays == 0) {
			str = "오늘";
		} else if(diffDays > 0 && diffDays < 30){
			str = diffDays + "일 전";
		} else {
			int month = (int)diffDays * 30; 
			str = month + "개월 전";
		}
		return str;
	}
	
	public static List<String> differenceDate(List<ReviewDTO> list) {
		List<String> strList = new ArrayList();
		
		for (int i = 0; i < list.size(); i++) {
			String wdate = list.get(i).getReview_wdate().substring(0, 10);
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date beginDate = null;
			
			try {
				beginDate = sdf.parse(wdate);
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			String sysdate = sdf.format(new Date());
			Date endDate = null;
			
			try {
				endDate = sdf.parse(sysdate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			long diff = endDate.getTime() - beginDate.getTime();
	        long diffDays = diff / (24 * 60 * 60 * 1000);
	        if (diffDays == 0) {
				strList.add("오늘");
			} else if(diffDays > 0 && diffDays < 30){
				strList.add(diffDays + "일 전");
			} else {
				int month = (int)diffDays / 30; 
				strList.add(month + "개월 전");
			}
		}
		
		return strList;
	}
}
