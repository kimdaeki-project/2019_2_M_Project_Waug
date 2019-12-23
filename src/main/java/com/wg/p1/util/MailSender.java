package com.wg.p1.util;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
public class MailSender {
	
	public void mailSender(HttpServletRequest request, ModelMap mo, HttpSession session, String name, String goods_name, String goods_option,String email) throws AddressException, MessagingException { 
	
	// 네이버일 경우 smtp.naver.com 을 입력합니다. 
	// Google일 경우 smtp.gmail.com 을 입력합니다. 
	String host = "smtp.gmail.com"; 
	final String username = "zzauggg"; //네이버 아이디를 입력해주세요. @naver.com은 입력하지 마시구요. 
	final String password = "Tkddydp1"; //네이버 이메일 비밀번호를 입력해주세요. 
	int port=465; //포트번호 
	
	//파일첨부
	Multipart multipart = new MimeMultipart();
	MimeBodyPart messageBodyPart = new MimeBodyPart();
	String filepath = session.getServletContext().getRealPath("resources/mail");
	String filename = "/Voucher.pdf";
	DataSource source = new FileDataSource(filepath + filename);
	messageBodyPart.setDataHandler(new DataHandler(source));
	messageBodyPart.setFileName(filename);
	multipart.addBodyPart(messageBodyPart);
	
	
	// 메일 내용
	//String name = "구매자명"; 
	//String goods_name = "구입상품명";
	//String goods_option = "상품옵션";
	
	String recipient = email; //받는 사람의 메일주소를 입력해주세요. 
	String subject = "ZZAUG Voucher :"+name+"님의 예약이 확정되었습니다.<br>"; //메일 제목 입력해주세요. 
	String body = "안녕하세요."+name+"님,<br>"+
	"<br>"+
	goods_name+"예약이 확정되어 바우처를 보내드립니다.<br>" +
	"<br>"+
	"바우처에는 해당 상품을 이용하기 위해 필요한 정보가 자세하게 안내되어 있으니 이용전에 꼭 확인해주세요.<br>"+
	"<br>"+
	goods_name+"<br>"+
	goods_option+"<br>"+"<br>"+
	"<br>"+
	"만약 바우처의 내용이 잘못 기재되어 있거나 궁금한 점이 있다면 아래 연락처로 문의해주세요.<br>"+
	"<br>"+
	"ZZAUG Travel:<br>"+
	"TEL 070-4353-5959<br>"+
	"카카오톡 @waug<br>"+
	"<br>"+
	"와그와 함께 더욱 즐겁고 신나는 여행이 되었으면 좋겠습니다!:)<br>"+
	"<br>"+
	"고맙습니다.<br>"+
	"<br>"+
	"ZZAUG Reservation Team.<br>"; //메일 내용 입력해주세요. 
	Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성 
	// SMTP 서버 정보 설정 
	props.put("mail.smtp.host", host); 
	props.put("mail.smtp.port", port); 
	props.put("mail.smtp.auth", "true"); 
	props.put("mail.smtp.ssl.enable", "true"); 
	props.put("mail.smtp.ssl.trust", host); 
	//Session 생성 
	Session sessions = Session.getDefaultInstance(props, new javax.mail.Authenticator() { 
		String un=username; 
		String pw=password; 
		protected javax.mail.PasswordAuthentication getPasswordAuthentication() { 
			return new javax.mail.PasswordAuthentication(un, pw);
			} 
		}); 
	sessions.setDebug(true); //for debug 
	Message mimeMessage = new MimeMessage(sessions); //MimeMessage 생성 
	
	mimeMessage.setFrom(new InternetAddress("pyj9088@gmail.com")); //발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요. 
	mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); //수신자셋팅 //.TO 외에 .CC(참조) .BCC(숨은참조) 도 있음 
	mimeMessage.setSubject(subject); //제목셋팅 
	
	//mimeMessage.setContent(multipart); //파일셋팅
	mimeMessage.setContent(body +"<a href=\"http:211.238.142.21/p1/resources/mail/Voucher.pdf\">바우처 다운 링크</a>", "text/html; charset=UTF-8"); //내용셋팅 

	Transport.send(mimeMessage); //javax.mail.Transport.send() 이용 
	}
	
	public void mailpassword(HttpServletRequest request, ModelMap mo, HttpSession session,String email, String uuid) throws AddressException, MessagingException { 
		System.out.println(uuid);
		// 네이버일 경우 smtp.naver.com 을 입력합니다. 
		// Google일 경우 smtp.gmail.com 을 입력합니다. 
		String host = "smtp.gmail.com"; 
		final String username = "zzauggg"; //네이버 아이디를 입력해주세요. @naver.com은 입력하지 마시구요. 
		final String password = "Tkddydp1"; //네이버 이메일 비밀번호를 입력해주세요. 
		int port=465; //포트번호 
		
		//파일첨부
		Multipart multipart = new MimeMultipart();
		MimeBodyPart messageBodyPart = new MimeBodyPart();
		String filepath = session.getServletContext().getRealPath("resources/mail");
		String filename = "/Voucher.pdf";
		DataSource source = new FileDataSource(filepath + filename);
		messageBodyPart.setDataHandler(new DataHandler(source));
		messageBodyPart.setFileName(filename);
		multipart.addBodyPart(messageBodyPart);
		
		
		// 메일 내용
		String name = "구매자명"; 
		String goods_name = "구입상품명";
		String goods_option = "상품옵션";
		
		String recipient = email; //받는 사람의 메일주소를 입력해주세요. 
		String subject = "[ZZAUG] 비밀번호 재설정 URL입니다."; //메일 제목 입력해주세요. 
		String body = "<div class=\"\">\r\n" + 
				"				<div class=\"aHl\">\r\n" + 
				"				</div>\r\n" + 
				"				<div id=\":91\" tabindex=\"-1\">\r\n" + 
				"				</div>\r\n" + 
				"				<div id=\":8q\" class=\"ii gt\">\r\n" + 
				"					<div id=\":8p\" class=\"a3s aXjCH \">\r\n" + 
				"					<u></u>\r\n" + 
				"					<div>\r\n" + 
				"						<div style=\"margin:0 auto;background-color:white;width:600px\">\r\n" + 
				"  							<div>\r\n" + 
				"    							<img src=\"https://ci6.googleusercontent.com/proxy/84xxtLoNcoWVLx4C25afoXbWEfYduHVMp2I_A842_PP4HLtUvUSE3WWvCLlzIZ0TX4CyeaZiL6DBPAo_pRX-djI3LLfNBIoQjGKkhmgeLbgngRvia8y8TDRED0F_=s0-d-e1-ft#https://d2mgzmtdeipcjp.cloudfront.net/files/upload-image/5951ffd062bc0.png\" style=\"float:right\" class=\"CToWUd\">\r\n" + 
				"  							</div>\r\n" + 
				"  							<div style=\"height:100px;text-align:left;font-size:40px;font-family:'Noto Sans KR',sans-serif\">\r\n" + 
				"								<div style=\"color:#eb2d68\">비밀번호\r\n" + 
				"								</div>\r\n" + 
				"     							<div style=\"color:black\">변경 메일\r\n" + 
				"								</div>\r\n" + 
				"  							</div>\r\n" + 
				"  							<div style=\"margin-top:50px;text-align:left;color:#7e7e7f;font-family:'Noto Sans KR',sans-serif;font-size:13px;line-height:18px\">\r\n" + 
				"  								 안녕하세요, ZZAUG입니다.\r\n" + 
				"  								<div style=\"margin-top:18px;text-align:left;color:#7e7e7f;font-family:'Noto Sans KR',sans-serif;font-size:13px;line-height:18px\">\r\n" + 
				"  									아래의 버튼을 통해 비밀번호를 재설정하신 후 계정을 사용하실 수 있습니다.\r\n" + 
				"  								</div>\r\n" + 
				"       							<div style=\"margin-top:20px;margin-bottom:50px;width:100%;height:1px;background-color:#7e7e7f\">\r\n" + 
				"       							</div>\r\n" + 
				"        						<a href=\"http://localhost/p1/member/password?uuid="+uuid+"\"; style=\"color:white;text-decoration:none\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?q=http://www.waug.com/new_pwd.html?token%3D8d6becc80c706dfa365075046615e8fe&amp;source=gmail&amp;ust=1576714187602000&amp;usg=AFQjCNFst_rdeJVKAR8Rc6L9FDfZLpo2CA\">\r\n" + 
				"        							<div style=\"margin:0 auto;margin-bottom:50px;width:200px;height:35px;border-radius:3px;background-color:#eb2d68;color:white;font-weight:bold;line-height:35px;font-size:13px;text-align:center;vertical-align:middle\">\r\n" + 
				"       									비밀번호 재설정하기\r\n" + 
				"       								</div>\r\n" +
				"       							</a>\r\n" + 
				"  							</div>\r\n" + 
				"							<div style=\"height:105px;background-color:#e0e0e0;color:#7e7e7f;font-family:'Noto Sans KR',sans-serif;font-size:11px\">\r\n" + 
				"								<div style=\"padding:20px 20px 10px 20px\">\r\n" + 
				"  									본 메일은 서비스 주요사항 고지 목적으로 WAUG 회원에게 발송되는 메일입니다. 발신 전용으로 회신되지 않습니다.\r\n" + 
				"  									도움이 필요하신 경우 TEL : 070-4353-5959 / 카카오톡 : \r\n" + 
				"  									<a href=\"http://plus.kakao.com/home/%40waug\" style=\"font-weight:bold;color:#eb2d68\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?q=http://plus.kakao.com/home/%2540waug&amp;source=gmail&amp;ust=1576714187602000&amp;usg=AFQjCNGycPOHrOG4LU7IhWCDD5L3L17GFg\">@WAUG</a>로 문의해주세요.\r\n" + 
				"									<div style=\"margin-top:16px;font-weight:bold\">\r\n" + 
				" 										ⓒ2017 WAUG All Rights Reserved.\r\n" + 
				" 									</div>\r\n" + 
				" 									<div class=\"yj6qo\">\r\n" + 
				" 									</div>\r\n" + 
				" 									<div class=\"adL\">\r\n" + 
				" 									</div>\r\n" + 
				" 								</div>\r\n" + 
				" 								<div class=\"adL\">\r\n" + 
				"								</div>\r\n" + 
				"							</div>\r\n" + 
				"							<div class=\"adL\">\r\n" + 
				"							</div>\r\n" + 
				"						</div>\r\n" + 
				"						<div class=\"adL\">\r\n" + 
				"						</div>\r\n" + 
				"					</div>\r\n" + 
				"				</div>\r\n" + 
				"			</div>\r\n" + 
				"			<div id=\":96\" class=\"ii gt\" style=\"display:none\">\r\n" + 
				"				<div id=\":95\" class=\"a3s aXjCH undefined\">\r\n" + 
				"				</div>\r\n" + 
				"			</div>\r\n" + 
				"			<div class=\"hi\">\r\n" + 
				"			</div>\r\n" + 
				"		</div>"; //메일 내용 입력해주세요. 
		Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성 
		// SMTP 서버 정보 설정 
		props.put("mail.smtp.host", host); 
		props.put("mail.smtp.port", port); 
		props.put("mail.smtp.auth", "true"); 
		props.put("mail.smtp.ssl.enable", "true"); 
		props.put("mail.smtp.ssl.trust", host); 
		//Session 생성 
		Session sessions = Session.getDefaultInstance(props, new javax.mail.Authenticator() { 
			String un=username; 
			String pw=password; 
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() { 
				return new javax.mail.PasswordAuthentication(un, pw);
				} 
			}); 
		sessions.setDebug(true); //for debug 
		Message mimeMessage = new MimeMessage(sessions); //MimeMessage 생성 
		
		mimeMessage.setFrom(new InternetAddress("zzauggg@gmail.com")); //발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요. 
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); //수신자셋팅 //.TO 외에 .CC(참조) .BCC(숨은참조) 도 있음 
		mimeMessage.setSubject(subject); //제목셋팅 
		
		//mimeMessage.setContent(multipart); //파일셋팅
		mimeMessage.setContent(body, "text/html; charset=UTF-8"); //내용셋팅 

		Transport.send(mimeMessage); //javax.mail.Transport.send() 이용 
		}
	
	
	
}
