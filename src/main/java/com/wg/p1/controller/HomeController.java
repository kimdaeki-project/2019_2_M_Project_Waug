package com.wg.p1.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.inject.Inject;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.NationVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.service.GoodsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Inject
	private GoodsService goodsService;
	
/*	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView goods(GoodsVO goodsVO, HttpSession session)throws Exception{
		List<GoodsVO> ar = new ArrayList<GoodsVO>();
		ModelAndView mv = new ModelAndView();
		ar = goodsService.goodsRecomand(goodsVO);
		List<NationVO> cityar = goodsService.CityList();
		List<NationVO> europe = goodsService.EuropeList();
		System.out.println(europe.size());
		
		session.getAttribute("wishlistVO");
		mv.addObject("list", ar);
		mv.addObject("citylist", cityar);
		mv.addObject("europe", europe);
		/*

		 * mv.addObject("wishlistVO", session.getAttribute("wishlistVO"));
		 		
	}*/
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView goodss(HttpSession session, MemberVO memberVO, GoodsVO goodsVO)throws Exception{
		List<GoodsVO> ar = new ArrayList<GoodsVO>();
		List<NationVO> europe_city = goodsService.EuropeList();
		List<NationVO> asia_city = goodsService.AsiaList();
		List<NationVO> cityar = goodsService.CityList();
		ModelAndView mv = new ModelAndView();
		
		System.out.println(europe_city.size());
		System.out.println(asia_city.size());
		memberVO = (MemberVO)session.getAttribute("memberVO");
		
		
		if(memberVO==null) {
			memberVO = new MemberVO();
			memberVO.setM_pk("a");
		}
		
		ar = goodsService.goodsRecomand(memberVO);
		session.getAttribute("wishlistVO");
		mv.addObject("citylist", cityar);
		mv.addObject("europe_city", europe_city);
		mv.addObject("asia_city", asia_city);
		/* mv.addObject("memberVO", memberVO); */
		mv.addObject("list", ar);
		mv.setViewName("home");
		
		return mv;
	}



	@RequestMapping("order/***")
	public void orderFolder() {

		
		
	}
	
	@RequestMapping(value = "/mailSender") 
	public void mailSender(HttpServletRequest request, ModelMap mo) throws AddressException, MessagingException { 
		
		// 네이버일 경우 smtp.naver.com 을 입력합니다. 
		// Google일 경우 smtp.gmail.com 을 입력합니다. 
		String host = "smtp.gmail.com"; 
		final String username = "zzauggg"; //네이버 아이디를 입력해주세요. @naver.com은 입력하지 마시구요. 
		final String password = "Tkddydp1"; //네이버 이메일 비밀번호를 입력해주세요. 
		int port=465; //포트번호 
		// 메일 내용 
		
		String name = "구매자명"; 
		String goods_name = "구입상품명";
		String goods_option = "상품옵션";
		
		String recipient = "pyj9088@naver.com"; //받는 사람의 메일주소를 입력해주세요. 
		String subject = "ZZAUG Voucher :"+name+"님의 예약이 확정되었습니다.\r\n"; //메일 제목 입력해주세요. 
		String body = "안녕하세요."+name+"님,\r\n"+
		"\r\n"+
		goods_name+"예약이 확정되어 바우처를 보내드립니다.\r\n" +
		"\r\n"+
		"바우처에는 해당 상품을 이용하기 위해 필요한 정보가 자세하게 안내되어 있으니 이용전에 꼭 확인해주세요.\r\n"+
		"\r\n"+
		goods_name+"\r\n"+
		goods_option+"\r\n"+
		"\r\n"+
		"만약 바우처의 내용이 잘못 기재되어 있거나 궁금한 점이 있다면 아래 연락처로 문의해주세요.\r\n"+
		"\r\n"+
		"ZZAUG Travel:\r\n"+
		"TEL 070-4353-5959\r\n"+
		"카카오톡 @waug\r\n"+
		"\r\n"+
		"와그와 함께 더욱 즐겁고 신나는 여행이 되었으면 좋겠습니다!:)\r\n"+
		"\r\n"+
		"고맙습니다.\r\n"+
		"\r\n"+
		"ZZAUG Reservation Team.\r\n"; //메일 내용 입력해주세요. 
		Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성 
		// SMTP 서버 정보 설정 
		props.put("mail.smtp.host", host); 
		props.put("mail.smtp.port", port); 
		props.put("mail.smtp.auth", "true"); 
		props.put("mail.smtp.ssl.enable", "true"); 
		props.put("mail.smtp.ssl.trust", host); 
		//Session 생성 
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() { 
			String un=username; 
			String pw=password; 
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() { 
				return new javax.mail.PasswordAuthentication(un, pw);
				} 
			}); 
		session.setDebug(true); //for debug 
		Message mimeMessage = new MimeMessage(session); //MimeMessage 생성 
		mimeMessage.setFrom(new InternetAddress("pyj9088@gmail.com")); //발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요. 
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); //수신자셋팅 //.TO 외에 .CC(참조) .BCC(숨은참조) 도 있음 
		mimeMessage.setSubject(subject); //제목셋팅 
		mimeMessage.setText(body); //내용셋팅 
		Transport.send(mimeMessage); //javax.mail.Transport.send() 이용 
		}


	}


