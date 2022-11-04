package com.kh.myapp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.market.myapp.domain.MarketDTO;

@Repository("marketDAO")
public class MarketDAOImpl implements MarketDAO {
	@Autowired
	private SqlSession sqlSession;
	private String NameSpace = "net.market.mapper.MarketMapper";

	@Override
	public List<MarketDTO> selectAll() throws Exception {
		return sqlSession.selectList(NameSpace + ".selectAll");
	}

	@Override
	public List<MarketDTO> selectByDistrict(String district) throws Exception {
		return sqlSession.selectList(NameSpace + ".selectByDistrict", district);
	}

	@Override
	public List<MarketDTO> selectDataByDYQ(String district) throws Exception {
		return sqlSession.selectList(NameSpace + ".selectDataByDYQ", district);
	}

}
