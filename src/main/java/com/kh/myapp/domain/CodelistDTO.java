package com.kh.myapp.domain;

import lombok.Data;

@Data
public class CodelistDTO {
	private int bd_code;
	private String district;

	public CodelistDTO() {
	}

	public CodelistDTO(int bd_code, String district) {
		this.bd_code = bd_code;
		this.district = district;
	}

}
