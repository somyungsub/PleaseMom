package com.push;
import java.io.DataOutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.json.simple.JSONObject;


public class RosaPush {
   //https://firebase.google.com/docs/cloud-messaging/downstream 참조
	private static String TAG = "RosaPush";
	private final String API_URL="https://fcm.googleapis.com/fcm/send";
	private String FIREBASE_SERVER_KEY;

	private String to;
	private Map<String, Object> dataMap;
	
	public RosaPush(String serverKey){
		FIREBASE_SERVER_KEY = serverKey;
	}
	public void push(){
		HttpURLConnection con = null;
		try{
			String json = toJson();
			System.out.println("JSON: " + json);
			String url = API_URL;
			
			URL obj = new URL(url);
			con = (HttpURLConnection)obj.openConnection();
			con.setRequestMethod("POST");
			con.setRequestProperty("Content-Type", "application/json");
			con.setRequestProperty("Authorization", "key="+FIREBASE_SERVER_KEY);
			con.setDoOutput(true);
			PrintWriter pw = new PrintWriter(con.getOutputStream());
			pw.print(json);
			pw.flush();
			pw.close();
			
			con.getResponseCode();
		}catch(Exception e){
			e.printStackTrace();
		}
	}//
	
	public void setTo(String to){
		this.to = to;
	}
	public void setData(Map<String, Object> _dataMap){
		dataMap = _dataMap;
	}
	
	public String toJson(){

		JSONObject obj = new JSONObject();
		JSONObject noti = new JSONObject();
		noti.put("title", "엄마를 부탁해");
		for (String key : dataMap.keySet()){
			String value = (String)dataMap.get(key);
			noti.put(key, value);
		}
		obj.put("to", to);
		obj.put("notification", noti);
		
		return obj.toString();
	}
	
	
}
