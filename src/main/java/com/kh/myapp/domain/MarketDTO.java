package com.kh.myapp.domain;

import lombok.Data;

@Data
public class MarketDTO {
	private int marketyear;
	private int marketquarter;
	private int bd_code;
	private String bd_codename;
	private String service_code;
	private String service_codename;
	private long marketquartersales;
	private int marketquartercount;
	private int marketofstores;
	private CodelistDTO codelistDTO;
	
	public MarketDTO() {
	}

	public MarketDTO(int marketyear, int marketquarter, int bd_code, String bd_codename, String service_code,
			String service_codename, long marketquartersales, int marketquartercount, int marketofstores,
			CodelistDTO codelistDTO) {
		this.marketyear = marketyear;
		this.marketquarter = marketquarter;
		this.bd_code = bd_code;
		this.bd_codename = bd_codename;
		this.service_code = service_code;
		this.service_codename = service_codename;
		this.marketquartersales = marketquartersales;
		this.marketquartercount = marketquartercount;
		this.marketofstores = marketofstores;
		this.codelistDTO = codelistDTO;
	}
}
