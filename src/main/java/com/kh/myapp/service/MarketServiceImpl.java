package com.kh.myapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import net.market.myapp.dao.MarketDAO;
import net.market.myapp.domain.MarketDTO;

@Service("marketService")
public class MarketServiceImpl implements MarketService {
	@Resource(name = "marketDAO")
	private MarketDAO marketDAO;

	@Override
	public List<MarketDTO> selectAll() throws Exception {
		return marketDAO.selectAll();
	}

	@Override
	public List<MarketDTO> selectByDistrict(String district) throws Exception {
		return marketDAO.selectByDistrict(district);
	}

	@Override
	public List<MarketDTO> selectDataByDYQ(String district) throws Exception {
		return marketDAO.selectDataByDYQ(district);
	}
}
