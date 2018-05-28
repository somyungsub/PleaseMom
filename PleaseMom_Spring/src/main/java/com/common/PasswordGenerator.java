package com.common;

import java.util.Random;

public class PasswordGenerator {
	public static String getPassword(int length){
		String upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";	// 1
		String lower = "abcdefghijklmnopqrstuvwxyz";	// 2
		String number = "0123456789";					// 3
		
		String pw = "";
		Random rn = new Random();
		for (int i = 0; i < length; i++) {
			int type = rn.nextInt(3) + 1;
			switch(type){
				case 1:
					int up = rn.nextInt(25)+1;
					pw += upper.charAt(up);
					break;
				case 2:
					int lo = rn.nextInt(25)+1;
					pw += lower.charAt(lo);
					break;
				case 3:
					int nu = rn.nextInt(9)+1;
					pw += number.charAt(nu);
					break;
			}
		}
		return pw;
	}
	public static String getCertifyNumber(int length){
		String number = "0123456789";					// 1
		
		String pw = "";
		Random rn = new Random();
		for (int i = 0; i < length; i++) {
			int type = rn.nextInt(3) + 1;
			int nu = rn.nextInt(9)+1;
			pw += number.charAt(nu);
		}
		return pw;
	}
}
