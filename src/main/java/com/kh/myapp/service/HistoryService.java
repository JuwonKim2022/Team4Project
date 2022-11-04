package com.kh.myapp.service;

import java.util.List;

import net.market.myapp.domain.HistoryDTO;

public interface HistoryService {
	public List<HistoryDTO> selectAll() throws Exception;

	public List<HistoryDTO> selectRecentHistory(int membernumber) throws Exception;
	
	int insert(HistoryDTO historyDTO) throws Exception;
}
