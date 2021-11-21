package org.sunw.self.client.common.reservation.service;

import java.util.List;

import org.sunw.self.client.common.reservation.domain.CategoryVO;
import org.sunw.self.client.common.reservation.domain.EquipmentManageVO;
import org.sunw.self.client.common.reservation.domain.KakaoPayApprovalVO;
import org.sunw.self.client.common.reservation.domain.KakaoPayReadyVO;
import org.sunw.self.client.common.reservation.domain.ReservationDTO;
import org.sunw.self.client.common.reservation.domain.WashMenuVO;

public interface ReservationService {
	
	
	public ReservationDTO getOneStoreInfo(String sId);
	
	public List<EquipmentManageVO> getStoreEquipmentPlacementList(String sId);
	
	public List<CategoryVO> getListCategory(ReservationDTO reservationDTO);

	public List<WashMenuVO> getListWashMenu(ReservationDTO reservationDTO);
	
	public WashMenuVO getWashMenu(ReservationDTO reservationDTO);
	
	public List<EquipmentManageVO> getListEquipment(ReservationDTO reservationDTO);
	
	public EquipmentManageVO getEquipment(ReservationDTO reservationDTO);
	
	public KakaoPayReadyVO getPaymentReady(ReservationDTO reservationDTO);
	
	public KakaoPayApprovalVO getPaymentSuccess(KakaoPayReadyVO kakaoPayReadyVO);
	
	
}
