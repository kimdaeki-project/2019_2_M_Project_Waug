package com.wg.p1.dao;
import java.util.ArrayList;
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
	
}
