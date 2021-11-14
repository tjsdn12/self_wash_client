package org.sunw.self.client.common.login.domain;

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
public class LoginVO {
	private String memId;
	private String memName; 
	private String phone;
	private String kakaoAuthorizationKey;
}
