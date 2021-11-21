package org.sunw.self.client.common.reservation.domain;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

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
public class KakaoPayApprovalVO {

    //response
    private String aid, tid, cid, sid;
    private String partner_order_id, partner_user_id, payment_method_type;
    private String item_name, item_code, payload;
    private Integer quantity, tax_free_amount, vat_amount;
    private Date created_at, approved_at;

}
