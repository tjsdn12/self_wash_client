package org.sunw.self.client.common.reservation.service;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import org.sunw.self.client.common.reservation.domain.CategoryVO;
import org.sunw.self.client.common.reservation.domain.EquipmentManageVO;
import org.sunw.self.client.common.reservation.domain.KakaoPayApprovalVO;
import org.sunw.self.client.common.reservation.domain.KakaoPayReadyVO;
import org.sunw.self.client.common.reservation.domain.OrderManageVO;
import org.sunw.self.client.common.reservation.domain.OrderMenuVO;
import org.sunw.self.client.common.reservation.domain.ReservationDTO;
import org.sunw.self.client.common.reservation.domain.WashMenuVO;
import org.sunw.self.client.common.reservation.mapper.ReservationMapper;

import com.mysql.cj.x.protobuf.MysqlxCrud.Order;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@RequiredArgsConstructor
@Log4j
public class ReservationServiceImpl implements ReservationService {
	
	private final ReservationMapper reservationMapper;

    private static final String HOST = "https://kapi.kakao.com";
    
    private static final String API_KEY = "c333d7f91aea9b011db45fc4afd9ff20";
    
	@Override
	public ReservationDTO getOneStoreInfo(String sId) {
		ReservationDTO ReservationDTO = new ReservationDTO();
		ReservationDTO.setStoreInfoVO(reservationMapper.getOneStoreInfo(sId));
		return ReservationDTO;
		
	}

	@Override
	public List<EquipmentManageVO> getStoreEquipmentPlacementList(String sId) {
		return reservationMapper.getStoreEquipmentPlacementList(sId);
	}
	
	@Override
	public List<WashMenuVO> getListWashMenu(ReservationDTO reservationDTO) {
		return reservationMapper.getListWashMenu(reservationDTO);
	}

	@Override
	public List<CategoryVO> getListCategory(ReservationDTO reservationDTO) {
		return reservationMapper.getListCategory(reservationDTO);
	}

	@Override
	public WashMenuVO getWashMenu(ReservationDTO reservationDTO) {
		return reservationMapper.getWashMenu(reservationDTO);
	}

	@Override
	public List<EquipmentManageVO> getListEquipment(ReservationDTO reservationDTO) {
		return reservationMapper.getListEquipment(reservationDTO);
	}

	@Override
	public EquipmentManageVO getEquipment(ReservationDTO reservationDTO) {
		return reservationMapper.getEquipment(reservationDTO);
	}
	
	@Override
	public KakaoPayReadyVO getPaymentReady(ReservationDTO reservationDTO) {

		OrderManageVO orderManageVO = insertOrder(reservationDTO);
        RestTemplate restTemplate = new RestTemplate();
 
        // 서버로 요청할 Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + API_KEY);
        headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
        
        // 서버로 요청할 Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("partner_order_id", orderManageVO.getOrderId());
        params.add("partner_user_id", orderManageVO.getOrderer());
        params.add("item_name", orderManageVO.getOrderMenuName());
        params.add("quantity", "1");
        params.add("total_amount", orderManageVO.getTotalPayment().toString());
        params.add("tax_free_amount", "0");
        params.add("approval_url", "http://localhost:8081/reservation/step/payment/success");
        params.add("cancel_url", "http://localhost:8081/reservation/step/payment/cancel");
        params.add("fail_url", "http://localhost:8081/reservation/step/payment/fail");
 
        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
 
        try {
        	KakaoPayReadyVO kakaoPayReadyVO = new KakaoPayReadyVO();

        	kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyVO.class);
        	kakaoPayReadyVO.setOrderManageVO(orderManageVO);
            log.info("" + kakaoPayReadyVO);
            
            return kakaoPayReadyVO;
 
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return null;
	}
	
	
	private OrderManageVO insertOrder(ReservationDTO reservationDTO) {
		OrderManageVO orderManageVO = new OrderManageVO();
		orderManageVO.setOrderer(reservationDTO.getMemId());
		orderManageVO.setRecipientPhone(reservationDTO.getPhone());
		
		WashMenuVO washMenuVO = getWashMenu(reservationDTO);
		orderManageVO.setTotalPayment(Long.valueOf(washMenuVO.getMenuPrice()));
		orderManageVO.setMethodOfPayment("kakaopay");
		orderManageVO.setOrderMenuName(washMenuVO.getMenuName());
		orderManageVO.setOrderStatus("waiting");
		orderManageVO.setAccumulatePoint((Long.valueOf(0)));
		reservationMapper.insertOrder(orderManageVO);
		
		OrderMenuVO orderMenuVO = new OrderMenuVO();
		orderMenuVO.setOrderId(orderManageVO.getOrderId());
		orderMenuVO.setWashMenuId(reservationDTO.getWashMenuId());
		orderMenuVO.setAmount(1);
		orderMenuVO.setMemId(reservationDTO.getMemId());
		orderMenuVO.setPrice(Long.valueOf(washMenuVO.getMenuPrice()));
		orderMenuVO.setEquipmentCode(reservationDTO.getEquipmentCode());
		orderMenuVO.setOrderMenuName(washMenuVO.getMenuName());
		reservationMapper.insertOrderMenu(orderMenuVO);
		
		return orderManageVO;
	}
	
	@Override
    public KakaoPayApprovalVO getPaymentSuccess(KakaoPayReadyVO kakaoPayReadyVO) {
//    	KakaoPayApprovalVO kakaoPayApprovalVO = new KakaoPayApprovalVO();
    	OrderManageVO orderManageVO = kakaoPayReadyVO.getOrderManageVO();
    	
        RestTemplate restTemplate = new RestTemplate();
 
        // 서버로 요청할 Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + API_KEY);
        headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
 
        // 서버로 요청할 Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("tid", kakaoPayReadyVO.getTid());
        params.add("partner_order_id", orderManageVO.getOrderId());
        params.add("partner_user_id", orderManageVO.getOrderer());
        params.add("pg_token", kakaoPayReadyVO.getPg_token());
        params.add("total_amount", orderManageVO.getTotalPayment().toString());
        
        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
        
        try {
        	KakaoPayApprovalVO kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoPayApprovalVO.class);
            log.info("" + kakaoPayApprovalVO);
            reservationMapper.updatePayment(orderManageVO.getOrderId(), "finish");
            return kakaoPayApprovalVO;
        
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return null;
    }

}
