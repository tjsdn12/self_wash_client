package org.sunw.self.client.common.main.mapper;

import java.util.List;

import org.sunw.self.client.common.main.domain.MainDTO;
import org.sunw.self.client.common.main.domain.StoreInfoVO;

public interface MainMapper {

	public List<StoreInfoVO> getSearchStore(MainDTO mainDTO);

}
