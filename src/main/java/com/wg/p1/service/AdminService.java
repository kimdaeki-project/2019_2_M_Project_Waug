package com.wg.p1.service;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.InfoVO;

@Service
public class AdminService {

	@Inject
	private GoodsDAO goodsDAO;
	
	public void goods_add(GoodsVO goodsVO, MultipartFile[] file, InfoVO infoVO) throws Exception{
		System.out.println(goodsVO.getCity_num());
		System.out.println(goodsVO.getCate_num());
		System.out.println(goodsVO.getT_num());
		
		System.out.println("**************** for test ****************");
		System.out.println("test : AdminService");
		System.out.println("infoVO : "+infoVO.getBoucher());
		
		System.out.println(file.length);
		for(int i=0;i<file.length;i++) {
			System.out.println(i+"번째 파일");
			System.out.println(file[i].getName());
			System.out.println(file[i].getOriginalFilename());
		}
		
		System.out.println("-----------goodsVO---------");
		System.out.println("goodsVO.getProgram() : "+goodsVO.getProgram());
	}
}
