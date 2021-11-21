package org.sunw.self.client.common.login.domain;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class LoginVO implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7922015238311904211L;
	private String memId;
	private String memName; 
	private String phone;
	private String kakaoAuthorizationKey;
}
