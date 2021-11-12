package org.sunw.self.client.common.login.domain;

import org.sunw.self.client.common.domain.DefaultDTO;

import lombok.Data;

@Data
public class LoginDTO extends DefaultDTO {

	LoginVO loginVO;
	
	String mgrId;
	String pw;
	String phone;
	
}
