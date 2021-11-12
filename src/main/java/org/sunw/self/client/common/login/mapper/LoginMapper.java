package org.sunw.self.client.common.login.mapper;

import org.sunw.self.client.common.login.domain.LoginDTO;
import org.sunw.self.client.common.login.domain.LoginVO;

public interface LoginMapper {
	
	LoginVO getLoginInfo(LoginDTO loginDTO);

}
