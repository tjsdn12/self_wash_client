package org.sunw.self.client.common.reservation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.sunw.self.client.common.reservation.domain.CategoryVO;
import org.sunw.self.client.common.reservation.domain.EquipmentManageVO;
import org.sunw.self.client.common.reservation.domain.OrderManageVO;
import org.sunw.self.client.common.reservation.domain.OrderMenuVO;
import org.sunw.self.client.common.reservation.domain.ReservationDTO;
import org.sunw.self.client.common.reservation.domain.StoreInfoVO;
import org.sunw.self.client.common.reservation.domain.WashMenuVO;

public interface ReservationMapper {
	
	public StoreInfoVO getOneStoreInfo(@Param("sId")String sId);
	
	public List<EquipmentManageVO> getStoreEquipmentPlacementList(String sId);
	
	public List<WashMenuVO> getListWashMenu(ReservationDTO reservationDTO);
	
	public List<CategoryVO> getListCategory(ReservationDTO reservationDTO);
	
	public WashMenuVO getWashMenu(ReservationDTO reservationDTO);
	
	public List<EquipmentManageVO> getListEquipment(ReservationDTO reservationDTO);
	
	public EquipmentManageVO getEquipment(ReservationDTO reservationDTO);
	
	public int insertOrder(OrderManageVO orderManageVO);
	
	public int insertOrderMenu(OrderMenuVO orderMenuVO);
	
	public int updatePayment(@Param("orderId") String orderId, @Param("orderStatus") String orderStatus);

}
