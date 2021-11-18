package org.sunw.self.client.common.reservation.service;

import java.util.List;

import org.sunw.self.client.common.reservation.domain.CategoryVO;
import org.sunw.self.client.common.reservation.domain.EquipmentManageVO;
import org.sunw.self.client.common.reservation.domain.ReservationDTO;
import org.sunw.self.client.common.reservation.domain.WashMenuVO;

public interface ReservationService {
	
	
	public ReservationDTO getOneStoreInfo(String sId);
	
	public List<EquipmentManageVO> getStoreEquipmentPlacementList(String sId);
	
	public List<WashMenuVO> getListWashMenu(ReservationDTO reservationDTO);

	public List<CategoryVO> getListCategory(ReservationDTO reservationDTO);
	
	
}
