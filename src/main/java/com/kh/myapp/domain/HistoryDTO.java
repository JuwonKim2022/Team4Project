package com.kh.myapp.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class HistoryDTO {
	private int membernumber;
	private int marketyear;
	private int marketquarter;
	private String bd_codename;
	private String district;
	private Timestamp search_date;
	
	public HistoryDTO() {
	}

	public HistoryDTO(int membernumber, int marketyear, int marketquarter, String bd_codename, String district,
			Timestamp search_date) {
		this.membernumber = membernumber;
		this.marketyear = marketyear;
		this.marketquarter = marketquarter;
		this.bd_codename = bd_codename;
		this.district = district;
		this.search_date = search_date;
	}
}
