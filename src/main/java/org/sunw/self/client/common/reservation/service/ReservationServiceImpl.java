package org.sunw.self.client.common.reservation.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.sunw.self.client.common.reservation.domain.CategoryVO;
import org.sunw.self.client.common.reservation.domain.EquipmentManageVO;
import org.sunw.self.client.common.reservation.domain.ReservationDTO;
import org.sunw.self.client.common.reservation.domain.WashMenuVO;
import org.sunw.self.client.common.reservation.mapper.ReservationMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReservationServiceImpl implements ReservationService {
	
	private final ReservationMapper reservationMapper;

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

}
