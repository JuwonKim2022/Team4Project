package com.kh.myapp.dao;

import java.util.List;

import net.market.myapp.domain.MarketDTO;

public interface MarketDAO {

	List<MarketDTO> selectAll() throws Exception;

	List<MarketDTO> selectByDistrict(String district) throws Exception;
	
	List<MarketDTO> selectDataByDYQ(String district) throws Exception;
}
