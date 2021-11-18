package org.sunw.self.client.common.reservation.domain;


import org.sunw.self.client.common.domain.DefaultDTO;

import lombok.Data;

@Data
public class ReservationDTO extends DefaultDTO{
	
	StoreInfoVO storeInfoVO;
	
	String sId;
	
	String sName;

	String largeCategory;
	
	String middleCategory;
	
	String washMenuId;
	
	String equipmentCode;

	
	public String getsId() {
		return sId;
	}

	public void setsId(String sId) {
		this.sId = sId;
	}

}
