package org.sunw.self.client.common.main.service;


import java.util.List;

import org.springframework.stereotype.Service;
import org.sunw.self.client.common.main.domain.MainDTO;
import org.sunw.self.client.common.main.domain.StoreInfoVO;
import org.sunw.self.client.common.main.mapper.MainMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@RequiredArgsConstructor
public class MainServiceImpl implements MainService {

	private final MainMapper mainMapper;

	@Override
	public List<StoreInfoVO> getSearchStore(MainDTO mainDTO) {
		return mainMapper.getSearchStore(mainDTO);
	}
	
	

}
