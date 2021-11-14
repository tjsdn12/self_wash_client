package org.sunw.self.client.common.main.domain;


import org.sunw.self.client.common.domain.DefaultDTO;

import lombok.Data;

@Data
public class MainDTO extends DefaultDTO{
	
	StoreInfoVO storeInfoVO;
	
	String searchStore;

}
