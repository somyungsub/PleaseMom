package com.login;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.dto.MemberDTO;
import com.exception.CommonException;
import com.service.MemberService;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	static ServletContext ctx = null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(ctx == null){
			ctx = request.getServletContext();
		}
		String userid = (String)request.getParameter("userid");
		String passwd = (String)request.getParameter("passwd");
		
		HashMap<String,String> map = new HashMap<>();
		map.put("mem_id", userid);
		map.put("mem_passwd", passwd);
		
		MemberService service = new MemberService();
		MemberDTO dto = null;
		String target = null;
		String title = null;
		
		LoginManager.getInstance();
		
		try {
			dto = service.login(map);
			if (dto == null) {
				title="아이디 또는 비밀번호가 일치하지 않습니다.";
				String link = "LoginFormServlet";
				request.setAttribute("title", title);
				request.setAttribute("link", link);
				target="error.jsp";
			}else{
				HttpSession session = request.getSession();
				session.setAttribute("login", dto);
				request.setAttribute("msgLogin", "로그인 되었습니다");
				target = "home.jsp";
			}
		} catch (CommonException e) {
			target = "error.jsp";
			title = e.getMessage();
			String link = "LoginFormServlet";
			request.setAttribute("title", title);
			request.setAttribute("link", link);
		}
		RequestDispatcher dis = request.getRequestDispatcher(target);
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	/*	
	 * 	SessionAttributeListener Inner Class
	 */
	public static class LoginManager implements HttpSessionAttributeListener, HttpSessionListener {
		private static List<HashMap<String, Object>> ctxLoginList = null;		// Sesseion ID, userid 저장용
		private static LoginManager loginManager = null;
		public static synchronized LoginManager getInstance()
		 {
		  if(loginManager == null)
		  {
			  loginManager = new LoginManager();
		  }
		  
		  return loginManager;
		 }
		
		@Override
		public void attributeAdded(HttpSessionBindingEvent bindSession) {
			ctxLoginList = (List<HashMap<String, Object>>)ctx.getAttribute("ctxLoginList");
			if(ctxLoginList == null){
				ctxLoginList = new ArrayList<HashMap<String,Object>>();
			}
			
			// TODO Auto-generated method stub
			HttpSession session = bindSession.getSession();
			
			/* 
			 * login이라는 session attribute가 set되었을 때
			 * set Session attribute named "login"
			 */
			if ("login".equals(bindSession.getName())) {		
				MemberDTO dto = (MemberDTO)bindSession.getValue();
				String loginUserid = dto.getMem_id();
				
				/* 
				 * ctxLoginList가 비어있지 않을 때 ID 체크
				 * 비어있으면(첫 로그인) 들어온 ID와 세션을 저장
				 * if ctxLoginList was empty check userid
				 * else put userid, session 
				 */
				if (ctxLoginList.size() != 0) {
					for (HashMap<String, Object> map : ctxLoginList) {
						String userid = (String)map.get("userid");
						
						/*
						 * 로그인된 아이디와 저장된 로그인 정보의 아이디를 비교
						 * comparing this login id and before login ids
						 */
						if (loginUserid.equals(userid)) {
							HttpSession invSession = (HttpSession)map.get("session");
							removeLogin(userid);
							invSession.invalidate();
							break;
						}
					}
					MemberDTO temp = (MemberDTO)bindSession.getValue();
					String userid = temp.getMem_id();
					HashMap<String, Object> dummyMap = new HashMap<String, Object>();
					dummyMap.put("userid", userid);
					dummyMap.put("session", session);
					ctxLoginList.add(dummyMap);
					ctx.setAttribute("ctxLoginList", ctxLoginList);
				}else{
					MemberDTO temp = (MemberDTO)bindSession.getValue();
					String userid = temp.getMem_id();
					HashMap<String, Object> dummyMap = new HashMap<String, Object>();
					dummyMap.put("userid", userid);
					dummyMap.put("session", session);
					ctxLoginList.add(dummyMap);
					ctx.setAttribute("ctxLoginList", ctxLoginList);
				}
			}
		}

		@Override
		public void attributeRemoved(HttpSessionBindingEvent arg0) {
			// TODO Auto-generated method stub
		}

		@Override
		public void attributeReplaced(HttpSessionBindingEvent arg0) {
			// TODO Auto-generated method stub
			
		}
		
		public void removeLogin(String userid){
			ctxLoginList = (List<HashMap<String, Object>>)ctx.getAttribute("ctxLoginList");
			for (int i = 0; i < ctxLoginList.size(); i++) {
				if (userid.equals(ctxLoginList.get(i).get("userid"))) {
					ctxLoginList.remove(i);
				}
			}
		}
		
		public void printLoginList(){
			if(ctxLoginList != null && ctxLoginList.size() > 0){
				System.out.println("현재 접속자 수 : " + ctxLoginList.size());
				System.out.println("-------------------------------");
				for (int i = 0; i < ctxLoginList.size(); i++) {
					System.out.println((i+1) + " : " + ctxLoginList.get(i).get("userid") + " | " + ctxLoginList.get(i).get("session"));
				}
				System.out.println("-------------------------------");
			}
		}
		
		@Override
		public void sessionCreated(HttpSessionEvent arg0) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void sessionDestroyed(HttpSessionEvent event) {
			HttpSession session = event.getSession();
		    if (ctxLoginList != null) {
				for (int i = 0; i < ctxLoginList.size(); i++) {
					if (session.toString().equals(ctxLoginList.get(i).get("session").toString())) {
						ctxLoginList.remove(i);
					}
				}
		    }
		}
	}
}
