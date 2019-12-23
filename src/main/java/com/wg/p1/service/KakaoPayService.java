package com.wg.p1.service;

import java.net.URI;
import javax.inject.Inject;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

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
        total_amount=goodsVO2.getPrice()*Integer.parseInt(optionVO2.getO_people());
        params.add("total_amount", String.valueOf(total_amount));	//String.valueOf(total_amount)
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
	
	 public KakaoPayApprovalVO kakaoPayInfo(String pg_token) throws Exception{
		 
	       System.out.println("***************************************************KakaoPayInfoVO");
	        
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

//	        try {
	            kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoPayApprovalVO.class);
	            System.out.println("kakaoPayApprovalVO : " + kakaoPayApprovalVO);
//	            RES_NUM	NUMBER(8,0)
//	            RES_DATE	DATE
//	            O_NUM	NUMBER(8,0)
//	            M_PK	VARCHAR2(100 BYTE)
//	            C_CODE	VARCHAR2(20 BYTE)
//	            POINT	NUMBER(8,0)
//	            TOTALPRICE	NUMBER(10,0)
//	            GOODS_NUM	NUMBER(8,0)
//	            RES_REF	NUMBER(8,0)
//	            PAY	VARCHAR2(100 BYTE)
//	            TID	VARCHAR2(100 BYTE)
	            System.out.println("&");
	            System.out.println("&");
	            System.out.println("&");
	            System.out.println("&");
	            System.out.println("&");
	            ReservationVO reservation=new ReservationVO();
	            reservation.setRes_date(kakaoPayApprovalVO.getCreated_at());
	            reservation.setO_num(optionVO2.getO_num());
	            System.out.println(reservation.getO_num());			//153
	            reservation.setM_pk(memberVO2.getM_pk());
	            System.out.println(reservation.getM_pk());			//w_adf@a
	            reservation.setC_code("test_c_code");
	            System.out.println(reservation.getC_code());		//test_c_code
	            int point=(int) (kakaoPayApprovalVO.getAmount().getTotal()*0.1);	//get point
	            reservation.setPoint(point);
	            System.out.println(reservation.getPoint());			//3847
	            reservation.setTotalprice(kakaoPayApprovalVO.getAmount().getTotal());
	            System.out.println(reservation.getTotalprice());	//38475
	            reservation.setGoods_num(goodsVO2.getGoods_num());
	            System.out.println(reservation.getGoods_num());		//164
	            reservation.setPay("kakaoPay");
	            System.out.println(reservation.getPay());			//kakaoPay
	            reservation.setTid(kakaoPayApprovalVO.getTid());
	            System.out.println(reservation.getTid());			//T2706580668283676212
	            int reservation_result=reservationDAO.addReservation(reservation);
	            System.out.println("kakaoService.reservation_result : "+reservation_result);
	            return kakaoPayApprovalVO;
	        
//	        } catch (RestClientException e) {
//	            // TODO Auto-generated catch block
//	            e.printStackTrace();
//	        } catch (URISyntaxException e) {
//	            // TODO Auto-generated catch block
//	            e.printStackTrace();
//	        }
//	        
//	        return null;
	    }
}
