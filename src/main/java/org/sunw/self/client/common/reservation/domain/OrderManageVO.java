package org.sunw.self.client.common.reservation.domain;

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
public class OrderManageVO implements Serializable {
	
		/**
	 * 
	 */
	private static final long serialVersionUID = -3970894108341619072L;
		String orderId; 			
		String orderDate; 		
		String orderer; 			
		String recipientPhone; 	
		Long totalPayment;		
		String methodOfPayment; 
		String orderStatus; 		
		Long accumulatePoint;  
		String orderMenuName;	
}
