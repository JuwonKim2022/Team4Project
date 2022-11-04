package com.kh.myapp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.market.myapp.domain.HistoryDTO;

@Repository("historyDAO")
public class HistoryDAOImpl implements HistoryDAO {
	@Autowired
	private SqlSession sqlSession;
	private String NameSpace = "net.market.mapper.HistoryMapper";

	@Override
	public List<HistoryDTO> selectAll() throws Exception {
		return sqlSession.selectList(NameSpace + ".selectAll");
	}
	
	@Override
	public List<HistoryDTO> selectRecentHistory(int membernumber) throws Exception {
		return sqlSession.selectList(NameSpace + ".selectRecentHistory", membernumber);
	}
	
	@Override
	public int insert(HistoryDTO historyDTO) throws Exception {
		return sqlSession.insert(NameSpace + ".insertPolygonSearchData", historyDTO);
	}
}
