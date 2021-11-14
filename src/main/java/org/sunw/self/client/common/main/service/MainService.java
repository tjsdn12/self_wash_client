package org.sunw.self.client.common.main.service;

import java.util.List;

import org.sunw.self.client.common.main.domain.MainDTO;
import org.sunw.self.client.common.main.domain.StoreInfoVO;

public interface MainService {
	
	List<StoreInfoVO> getSearchStore(MainDTO mainDTO);

}
