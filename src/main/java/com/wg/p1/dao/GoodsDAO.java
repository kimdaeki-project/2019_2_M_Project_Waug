package com.wg.p1.dao;
import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.wg.p1.model.CategoryVO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.InfoVO;
import com.wg.p1.model.NationVO;
import com.wg.p1.model.ThemeVO;
import com.wg.p1.util.Pager;
import com.wg.p1.model.MemberVO;



@Repository
public class GoodsDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="goodsMapper.";
	
	//infoUpdate
	public int infoUpdate(InfoVO infoVO)throws Exception{
		return sqlSession.update(NAMESPACE+"infoUpdate", infoVO);
	}
	//goodsUpdate
	public int goodsUpdate(GoodsVO goodsVO)throws Exception{
		System.out.println("goodsDAO : goods_num : "+goodsVO.getGoods_num());
		return sqlSession.update(NAMESPACE+"goodsUpdate", goodsVO);
	}
	//goodsDelete
	public int goodsDelete(GoodsVO goodsVO) throws Exception{
		return sqlSession.delete(NAMESPACE+"goodsDelete", goodsVO);
	}

	//quick Search
	public List<GoodsVO> quickSearch_usim() throws Exception{
		return sqlSession.selectList(NAMESPACE+"quickSearch_usim");
	}
	public List<GoodsVO> quickSearch_airport() throws Exception{
		return sqlSession.selectList(NAMESPACE+"quickSearch_airport");
	}
	public List<GoodsVO> quickSearch_jr() throws Exception{
		return sqlSession.selectList(NAMESPACE+"quickSearch_jr");
	}

	//getCityName 도시 번호로 도시이름 가져오기
	public String getCityName(int city_num) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCityName", city_num);
	}
	
	//maxGoodsNum
	public int maxGoodsNum() throws Exception{
		return sqlSession.selectOne(NAMESPACE+"maxGoodsNum");
	}

	//infoInsert
	public int infoInsert(InfoVO infoVO)throws Exception{
		return sqlSession.insert(NAMESPACE+"infoInsert", infoVO);

	}
	public List<GoodsVO> quickSearch_eurail() throws Exception{
		return sqlSession.selectList(NAMESPACE+"quickSearch_eurail");
	}
	
	
	//goodsInsert
	public int goodsInsert(GoodsVO goodsVO)throws Exception{
		return sqlSession.insert(NAMESPACE+"goodsInsert", goodsVO);
	}
	//selectGoodsInfo
	public InfoVO selectGoodsInfo(int goods_num) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"selectGoodsInfo", goods_num);
	}

	public List<GoodsVO> goodsRecomand(MemberVO memberVO) throws Exception{
		System.out.println(memberVO.getM_pk());
		return sqlSession.selectList(NAMESPACE+"goodsRecomand", memberVO);
	}
	

	public List<GoodsVO> goodsList(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"goodsList", pager);

	}
	
	public List<NationVO> CityList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"areaRecomand");
	}
	
	public List<NationVO> EuropeList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"europeList");
	}
	
	public List<NationVO> AsiaList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"asiaList");
	}
	
	public NationVO City(NationVO nationVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"areaSelect", nationVO);
	}
	public GoodsVO goosSelectOne(int goods_num) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"goodsSelectOne", goods_num);

	}

	public int goodsCount(Pager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"goodsCount", pager);
	}
	
	public List<NationVO> CityAll() throws Exception{
		return sqlSession.selectList(NAMESPACE+"cityList");
	}
	
	public List<CategoryVO> CateAll() throws Exception{
		return sqlSession.selectList(NAMESPACE+"cateList");
	}
	public List<ThemeVO> ThemeAll() throws Exception{
		return sqlSession.selectList(NAMESPACE+"themeList");

	}
	
	//메인페이지 검색창전용-도시
	public List<NationVO> Citysearch(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"searchcity", pager);
	}
	//메인페이지 검색창전용-상품
	public List<GoodsVO> Goodssearch(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"searchgoods", pager);
	}
	
}
