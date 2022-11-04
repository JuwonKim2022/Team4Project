package com.kh.myapp.dao;

import java.util.List;

import net.market.myapp.domain.HistoryDTO;

public interface HistoryDAO {

	public List<HistoryDTO> selectAll() throws Exception;

	public List<HistoryDTO> selectRecentHistory(int membernumber) throws Exception;

	public int insert(HistoryDTO historyDTO) throws Exception;
}
