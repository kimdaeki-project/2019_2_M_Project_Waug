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

import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.KakaoPayApprovalVO;
import com.wg.p1.model.KakaoPayReadyVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.model.OptionVO;

@Service
public class KakaoPayService {

	private static final String HOST = "https://kapi.kakao.com";

	private KakaoPayReadyVO kakaoPayReadyVO;
	private KakaoPayApprovalVO kakaoPayApprovalVO;

	public String kakaoPayReady(GoodsVO goodsVO,OptionVO optionVO, MemberVO memberVO) throws Exception {
		RestTemplate restTemplate = new RestTemplate();
		/*
		 * POST /v1/payment/ready HTTP/1.1
			Host: kapi.kakao.com
			Authorization: KakaoAK {admin_key}
			Content-type: application/x-www-form-urlencoded;charset=utf-8
		 * */
//		System.out.println("kakao service : member : "+memberVO.getEmail());
		// 서버로 요청할 Header
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK " + "ef7dca62b3e1385210da789e8ace4134");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");

				
		// 서버로 요청할 Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("partner_order_id", String.valueOf(optionVO.getO_num()));		
        params.add("partner_user_id","test_user");	// memberVO.getEmail()
        params.add("item_name", goodsVO.getTitle());
        params.add("quantity", optionVO.getO_people());
        int total_amount=goodsVO.getPrice()*Integer.parseInt(optionVO.getO_people());
        params.add("total_amount", String.valueOf(total_amount));
        params.add("tax_free_amount", "100");
        params.add("approval_url", "http://localhost/p1/kakao/kakaoPaySuccess");		//건들것 없음
        params.add("cancel_url", "http://localhost/p1/kakao/kakaoPayCancel");			//건들것 없음
        params.add("fail_url", "http://localhost/p1/kakao/kakaoPaySuccessFail");		//건들것 없음
        
        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
        
//        try {
            kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyVO.class);
            
           System.out.println("kakaoPayReadyVO : " + kakaoPayReadyVO);
           System.out.println("kakaoPayReadyVO.getNext_redirect_pc_url() : " + kakaoPayReadyVO.getNext_redirect_pc_url());
           
            return kakaoPayReadyVO.getNext_redirect_pc_url();
 
//        } catch (RestClientException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        } catch (URISyntaxException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
        
//        return "/pay";
	}
	
	 public KakaoPayApprovalVO kakaoPayInfo(String pg_token) {
		 
	        System.out.println("KakaoPayInfoVO............................................");
	       System.out.println("-----------------------------");
	        
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
	        params.add("partner_order_id", "1001");		//order_num
	        params.add("partner_user_id", "test_user");	//memberVO.getEmail()
	        params.add("pg_token", pg_token);
	        params.add("total_amount", "2100");
	        
	        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
	        
	        try {
	            kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoPayApprovalVO.class);
	            System.out.println("kakaoPayApprovalVO : " + kakaoPayApprovalVO);
	          
	            return kakaoPayApprovalVO;
	        
	        } catch (RestClientException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (URISyntaxException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        
	        return null;
	    }
}
