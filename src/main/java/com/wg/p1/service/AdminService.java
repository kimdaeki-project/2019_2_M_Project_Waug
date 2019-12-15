package com.wg.p1.service;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.InfoVO;
import com.wg.p1.util.CouponMaker;
import com.wg.p1.util.FileSaver;

@Service
public class AdminService {

	@Inject
	private GoodsDAO goodsDAO;
	@Inject
	private FileSaver fileSaver;

	public int addGoods(GoodsVO goodsVO, MultipartFile[] file, InfoVO infoVO, HttpSession session)throws Exception{
		CouponMaker couponMaker=new CouponMaker();;
		//대표이미지 저장하기

		System.out.println("City num : "+goodsVO.getCity_num());
		System.out.println("City name : "+goodsVO.getCity_name());

		//파일 저장하기(sub 이미지 저장)
		String realPath=session.getServletContext().getRealPath("resources/images/goods");
		String fileName="";
		for(int i=0;i<file.length;i++) {
			fileName=fileSaver.save(realPath, file[i]);			
			switch (i) {
			case 0: 
				goodsVO.setImg1(fileName);
				System.out.println("img1Saved");
				break;
			case 1:
				goodsVO.setImg2(fileName);
				System.out.println("img3Saved");
				break;
			case 2:
				goodsVO.setImg3(fileName);
				System.out.println("img4Saved");
				break;
			case 3:
				goodsVO.setImg4(fileName);
				System.out.println("img4Saved");
			}
		}

		//1-2
		goodsVO.setCoupon(couponMaker.makeCoupon(goodsVO.getCity_num()));
		goodsVO.setCity_name(goodsDAO.getCityName(goodsVO.getCity_num()));
		goodsVO.setLocation(goodsDAO.getCityName(goodsVO.getCity_num()));
		goodsVO.setImg(goodsVO.getImg());


		int rsGoods=goodsDAO.goodsInsert(goodsVO);
		System.out.println("test : goodsService.addGoods.rsGoods : "+rsGoods);

		//get goodsNum
		int maxGoodsNum=goodsDAO.maxGoodsNum();

		//2.infoVO
		infoVO.setGoods_num(maxGoodsNum);
		rsGoods=goodsDAO.infoInsert(infoVO);
		System.out.println("test : goodsService.addGoods.rsInfo : "+rsGoods);
		
		return rsGoods;
	}
	
	public int goodsDelete(GoodsVO goodsVO) throws Exception{
		int result=goodsDAO.goodsDelete(goodsVO);
		return result;
	}
	
	public ArrayList<Object> goods_update(GoodsVO goodsVO) throws Exception{
		InfoVO infovo=goodsDAO.selectGoodsInfo(goodsVO.getGoods_num());
		GoodsVO goodsVO2=goodsDAO.goosSelectOne(goodsVO.getGoods_num());
		ArrayList<Object> goods=new ArrayList<Object>();
		goods.add(infovo);
		goods.add(goodsVO2);
		return goods;
	}
	
}
