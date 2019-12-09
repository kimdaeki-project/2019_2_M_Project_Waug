package com.wg.p1.service;

import org.springframework.http.MediaType;
import java.net.URI;
import java.net.URISyntaxException;

import javax.inject.Inject;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;


import com.wg.p1.model.KakaoPayVO;

@Service
public class KakaoPayService {

	private KakaoPayVO kakaoPayVO;
	private static final String HOST = "https://kapi.kakao.com";

	public String test() {
		return "service_test()_test";
	}
	
	public String kakaoPayReady() throws Exception{
		
		RestTemplate restTemplate=new RestTemplate();
		System.out.println("test0");
		
		//Header for Request
		HttpHeaders headers=new HttpHeaders();
		headers.add("Authorization", "kakaoAK "+"ef7dca62b3e1385210da789e8ace4134");
		//headers.add(“Authorization”, “KakaoAK” + ef7dca62b3e1385210da789e8ace4134);
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);		//APPLICATION_JSON_UTF8_VALUE (?)
		headers.add("Content-type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
		System.out.println(headers.get("Accept"));
		System.out.println("header");
		/*
		HttpHeaders headers = new HttpHeaders();
	    headers.add("Authorization", "KakaoAK " + "admin key를 넣어주세요~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!");
	    headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
	    headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	    */    
		
		//Body for request
		MultiValueMap<String, String> params=new LinkedMultiValueMap<String, String>();
		//MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "ttttest002");
		params.add("partner_order_id", "1001");
	    params.add("partner_user_id", "gorany");
	    params.add("item_name", "갤럭시S9");
	    params.add("quantity", "1");
	    params.add("total_amount", "2100");
	    params.add("tax_free_amount", "100");
	    params.add("approval_url", "kakao/kakaoPaySuccess");	//!
	    params.add("cancel_url", "kakao/kakaoPayCancel");		//!
	    params.add("fail_url", "kakao/kakaoPayFail");			//!

	    System.out.println("body");
		HttpEntity<MultiValueMap<String, String>> body=new HttpEntity<MultiValueMap<String,String>>(params, headers);
		
		
		try {
			kakaoPayVO=restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayVO.class);
			//kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyVO.class);
			System.out.println("getCreated_at() : "+kakaoPayVO.getCreated_at());
			System.out.println("next_redirect_pc_url : "+kakaoPayVO.getNext_redirect_pc_url());
			System.out.println("tid : "+kakaoPayVO.getTid());
			return kakaoPayVO.getNext_redirect_pc_url();
 
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return "/pay";
		/*
		 * kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyVO.class);
            log.info("" + kakaoPayReadyVO);
            return kakaoPayReadyVO.getNext_redirect_pc_url();
		 */
	}
}
