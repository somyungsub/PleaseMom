<%@page import="com.dao.MemberDAO"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.common.PasswordGenerator"%>
<%@page import="com.dto.MemberDTO"%>
<%@page import="java.util.Date"%>
<%@page import="javax.mail.internet.MimeUtility"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.internet.AddressException"%>
<%@page import="com.authentication.SendMail"%>
<%@ page import="javax.mail.Transport"%>
<%@ page import="javax.mail.Message"%>
<%@ page import="javax.mail.internet.InternetAddress"%>
<%@ page import="javax.mail.Address"%>
<%@ page import="javax.mail.internet.MimeMessage"%>
<%@ page import="javax.mail.Session"%>
<%@ page import="javax.mail.Authenticator"%>
<%@ page import="java.util.Properties"%>

<%
	String userid = (String)request.getAttribute("userid");
	String host = "smtp.naver.com";
    String subject = "엄마를 부탁해, 임시 비밀번호 발송";
    String from = "mejune1009@naver.com"; //보내는 메일
    String fromName = "엄마를 부탁해 Master"; // 보낸사람 이름
    String to = userid;
    String tempPasswd = PasswordGenerator.getPassword(10);
    
    HashMap<String,String> map = new HashMap<>();
    map.put("userid", userid);
    map.put("passwd", tempPasswd);
    
    MemberDAO mDao = new MemberDAO();
    mDao.tempPasswd(map);
    
    String content = "엄마를 부탁해, 임시 비밀번호를 전송합니다.<br><br>임시비밀번호 : " + tempPasswd;
   try{
     //프로퍼티 값 인스턴스 생성과 기본세션(SMTP 서버 호스트 지정)
     Properties props = new Properties();
     //네이버 SMTP 사용시
     props.put("mail.smtp.starttls.enable","true");
     props.put("mail.transport.protocol","smtp");
     props.put("mail.smtp.host", host);
     
     props.put("mail.smtp.port","465");  // 보내는 메일 포트 설정
     props.put("mail.smtp.user", from);
     props.put("mail.smtp.auth","true");
     props.put("mail.smtp.debug", "true");
     props.put("mail.smtp.socketFactory.port", "465");
     props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
     props.put("mail.smtp.socketFactory.fallback", "false");


     Authenticator auth = new SendMail();
     Session mailSession = Session.getDefaultInstance(props,auth);
   
     Message msg = new MimeMessage(mailSession);
     msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName,"UTF-8","B"))); //보내는 사람 설정
    InternetAddress[] address = {new InternetAddress(to)};
    
     msg.setRecipients(Message.RecipientType.TO, address); //받는 사람설정
   
     msg.setSubject(subject); //제목설정
    msg.setSentDate(new java.util.Date()); //보내는 날짜 설정
    msg.setContent(content,"text/html; charset=EUC-KR"); //내용 설정(MIME 지정-HTML 형식)
    
     Transport.send(msg); //메일 보내기

    System.out.println("메일 발송을 완료하였습니다.");
     }catch(MessagingException ex){
      System.out.println("mail send error : "+ex.getMessage());
       ex.printStackTrace();
     }catch(Exception e){
      System.out.println("error : "+e.getMessage());
       e.printStackTrace();
     }
%>
<div class="row">
    <div class="ol-lg-6 col-lg-offset-3 col-md-10 col-md-offset-1">
    	<h1 align="center">메일 발송 완료</h1>
    	<br>
   		<label class="control-label"><h4>${userid}로 메일 발송을 완료하였습니다</h4></label>
		<h2><input class="form-control input-lg" type="button" id="findPwClose" value="닫기"></h2>
	</div>
</div>