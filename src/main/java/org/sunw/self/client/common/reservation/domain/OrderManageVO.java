package org.sunw.self.client.common.reservation.domain;

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
public class OrderManageVO {
	
		String orderId; 			
		String orderDate; 		
		String orderer; 			
		String recipientPhone; 	
		Long totalPayment;		
		String methodOfPayment; 
		String orderStatus; 		
		Long accumulatePoint;  
}
