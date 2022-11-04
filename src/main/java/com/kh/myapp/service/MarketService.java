package com.kh.myapp.service;

import java.util.List;

import net.market.myapp.domain.MarketDTO;

public interface MarketService {
	public List<MarketDTO> selectAll() throws Exception;

	List<MarketDTO> selectByDistrict(String district) throws Exception;
	
	List<MarketDTO> selectDataByDYQ(String district) throws Exception;
}
