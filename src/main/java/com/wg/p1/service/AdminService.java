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

import java.util.List;
import com.wg.p1.dao.AdminDAO;
import com.wg.p1.model.NationVO;

@Service
public class AdminService {

	@Inject
	private GoodsDAO goodsDAO;
	@Inject
	private FileSaver fileSaver;
	@Inject
	private AdminDAO adminDAO;

	public int goodsUpdate_info(InfoVO infoVO)throws Exception{
		int infoVO_update=goodsDAO.infoUpdate(infoVO);
		return infoVO_update;
	}
	
	public int goodsUpdate_goods(GoodsVO goodsVO, MultipartFile[] file, HttpSession session)throws Exception{
	//대표이미지 저장하기

		//파일 저장하기(sub 이미지 저장)
		String realPath=session.getServletContext().getRealPath("resources/images/goods");
		String fileName="";
		for(int i=0;i<file.length;i++) {
			fileName=fileSaver.save(realPath, file[i]);			
			switch (i) {
			case 0: 
				goodsVO.setImg1(fileName);
				break;
			case 1:
				goodsVO.setImg2(fileName);
				break;
			case 2:
				goodsVO.setImg3(fileName);
				break;
			case 3:
				goodsVO.setImg4(fileName);
			}
		}
			System.out.println("adminService : test-------------------------------");
			
			
		int goodsVO_update=goodsDAO.goodsUpdate(goodsVO);
		//기존에 저장했던 파일 삭제기능 추가
		return goodsVO_update;
	}
	
	public int addGoods(GoodsVO goodsVO, MultipartFile[] file, InfoVO infoVO, HttpSession session)throws Exception{
		CouponMaker couponMaker=new CouponMaker();;
		//대표이미지 저장하기
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
				System.out.println("img2Saved");
				break;
			case 2:
				goodsVO.setImg3(fileName);
				System.out.println("img3Saved");
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


	//도시추가페이지
	public int city_add(NationVO nationVO) throws Exception{
		return adminDAO.city_add(nationVO);
	}
	
	public List<NationVO> city_list() throws Exception{
		return adminDAO.city_list();
	}
	
	public NationVO check_city(NationVO nationVO) throws Exception{
		return adminDAO.check_city(nationVO);
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
