package org.sunw.self.client.common.reservation.domain;

import java.io.Serializable;
import java.util.Date;

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
public class KakaoPayReadyVO implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 9055201059457996317L;
	//response
    private String tid, next_redirect_pc_url;
    private Date created_at;
    private String pg_token;
    
    private OrderManageVO orderManageVO;

}
