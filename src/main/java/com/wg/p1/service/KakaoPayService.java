package com.wg.p1.service;

import java.net.URI;
import java.net.URISyntaxException;

import javax.inject.Inject;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.dao.ReservationDAO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.KakaoPayApprovalVO;
import com.wg.p1.model.KakaoPayReadyVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.model.OptionVO;
import com.wg.p1.model.ReservationVO;

@Service
public class KakaoPayService {

	private static final String HOST = "https://kapi.kakao.com";

	private KakaoPayReadyVO kakaoPayReadyVO;
	private KakaoPayApprovalVO kakaoPayApprovalVO;
	private GoodsVO goodsVO2;
	private OptionVO optionVO2;
	private MemberVO memberVO2;
	private int total_amount;
	@Inject
	private ReservationDAO reservationDAO;
	@Inject
	private GoodsDAO goodsDAO;
	
	public String kakaoPayReady(GoodsVO goodsVO,OptionVO optionVO, MemberVO memberVO,double totalprice) throws Exception {
		RestTemplate restTemplate = new RestTemplate();
		// 서버로 요청할 Header
		goodsVO2=goodsVO;optionVO2=optionVO;memberVO2=memberVO;
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK " + "ef7dca62b3e1385210da789e8ace4134");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
		// 서버로 요청할 Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("partner_order_id", String.valueOf(optionVO2.getO_num()));		
        params.add("partner_user_id",memberVO2.getM_pk());	// memberVO.getEmail()
        params.add("item_name", goodsVO2.getTitle());
        params.add("quantity", optionVO2.getO_people());
        total_amount=(int)totalprice;
        params.add("total_amount", String.valueOf(total_amount));	//String.valueOf(total_amount)
        params.add("tax_free_amount", "100");
        params.add("approval_url", "http://localhost/p1/kakao/kakaoPaySuccess");		//건들것 없음
        params.add("cancel_url", "http://localhost/p1/kakao/kakaoPayCancel");			//건들것 없음
        params.add("fail_url", "http://localhost/p1/kakao/kakaoPaySuccessFail");		//건들것 없음
        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
        kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyVO.class);
        System.out.println("kakaoPayReadyVO : " + kakaoPayReadyVO);
        System.out.println("kakaoPayReadyVO.getNext_redirect_pc_url() : " + kakaoPayReadyVO.getNext_redirect_pc_url());
         return kakaoPayReadyVO.getNext_redirect_pc_url();
	}
	
	 public KakaoPayApprovalVO kakaoPayInfo(String pg_token) throws Exception{
        RestTemplate restTemplate = new RestTemplate();
        // 서버로 요청할 Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + "ef7dca62b3e1385210da789e8ace4134");
        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
        // 서버로 요청할 Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("tid", kakaoPayReadyVO.getTid());
        params.add("partner_order_id", String.valueOf(optionVO2.getO_num()));		//order_num
        params.add("partner_user_id", memberVO2.getM_pk());	//memberVO.getEmail()
        params.add("pg_token", pg_token);
        params.add("total_amount", String.valueOf(total_amount));
        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
        kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoPayApprovalVO.class);
        System.out.println("kakaoPayApprovalVO : " + kakaoPayApprovalVO);
        ReservationVO reservation=new ReservationVO();
        reservation.setRes_date(kakaoPayApprovalVO.getCreated_at());
        reservation.setO_num(optionVO2.getO_num());
        reservation.setM_pk(memberVO2.getM_pk());
        reservation.setC_code("test_c_code");
        int point=(int) (kakaoPayApprovalVO.getAmount().getTotal()*0.1);	//get point
        reservation.setPoint(point);
        reservation.setTotalprice(kakaoPayApprovalVO.getAmount().getTotal());
        reservation.setGoods_num(goodsVO2.getGoods_num());
        reservation.setPay("kakaoPay");
        reservation.setTid(kakaoPayApprovalVO.getTid());
        goodsVO2.setSell(goodsVO2.getSell()+1);
        goodsVO2.setQtt(goodsVO2.getQtt()-1);
        goodsDAO.sellUpdate(goodsVO2);
        int reservation_result=reservationDAO.addReservation(reservation);
        return kakaoPayApprovalVO;
	    }
}
