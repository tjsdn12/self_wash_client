package org.sunw.self.client.common.reservation.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.sunw.self.client.common.domain.ResultDTO;
import org.sunw.self.client.common.main.domain.MainDTO;
import org.sunw.self.client.common.main.domain.StoreInfoVO;
import org.sunw.self.client.common.main.service.MainService;
import org.sunw.self.client.common.reservation.domain.EquipmentManageVO;
import org.sunw.self.client.common.reservation.domain.ReservationDTO;
import org.sunw.self.client.common.reservation.domain.WashMenuVO;
import org.sunw.self.client.common.reservation.service.ReservationService;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
	
	@Autowired
	MainService mainService;
	
	@Autowired
	ReservationService reservationService;

	
	@GetMapping("/step/selectMachine")
	public void selectMachine(ReservationDTO reservationDTO, Model model, HttpServletRequest request) {
		initReservationDTO(reservationDTO, request);
		ReservationDTO getOne =reservationService.getOneStoreInfo(reservationDTO.getsId());
		model.addAttribute("storeInfoVO",getOne.getStoreInfoVO());
		List<EquipmentManageVO> equipmentPlacementList = reservationService.getStoreEquipmentPlacementList(reservationDTO.getsId());
		model.addAttribute("equipmentPlacementList",equipmentPlacementList);
		
	}
	
	@GetMapping("/step/selectCourse")
	public void selectCourse(ReservationDTO reservationDTO, Model model, HttpServletRequest request) {
		initReservationDTO(reservationDTO, request);
		
		model.addAttribute("category", reservationService.getListCategory(reservationDTO));
	}
	
	@GetMapping("/step/selectEquipment")
	public void selectEquipment(ReservationDTO reservationDTO, Model model, HttpServletRequest request) {
		initReservationDTO(reservationDTO, request);
		model.addAttribute("category", reservationService.getListCategory(reservationDTO));
	}
	
	@GetMapping("/step/confirmOrder")
	public void confirmOrder(ReservationDTO reservationDTO, Model model, HttpServletRequest request) {
		initReservationDTO(reservationDTO, request);
		model.addAttribute("category", reservationService.getListCategory(reservationDTO));
	}
	

	
	@GetMapping("/step/selectListWashMenu")
	@ResponseBody
	@ResponseStatus(HttpStatus.OK)
	public ResultDTO selectListWashMenu(ReservationDTO reservationDTO) {
		ResultDTO result = new ResultDTO();
		List<WashMenuVO> storeInfoList =reservationService.getListWashMenu(reservationDTO);
		result.setSuccess(storeInfoList!=null);
		result.setData(storeInfoList);
		return result;
	}
	

	
	private ReservationDTO initReservationDTO(ReservationDTO reservationDTO, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(reservationDTO.getsId() != null && !reservationDTO.getsId().isEmpty()) {
			session.setAttribute("sId", reservationDTO.getsId());
		}
		if(reservationDTO.getLargeCategory()!= null && !reservationDTO.getLargeCategory().isEmpty()) {
			session.setAttribute("largeCategory", reservationDTO.getLargeCategory());
		}
		if(reservationDTO.getWashMenuId() != null && !reservationDTO.getWashMenuId().isEmpty()) {
			session.setAttribute("washMenuId", reservationDTO.getWashMenuId());
		}
		if(reservationDTO.getEquipmentCode() != null && !reservationDTO.getEquipmentCode().isEmpty()) {
			session.setAttribute("equipmentCode", reservationDTO.getEquipmentCode());
		}
		reservationDTO.setsId((String)session.getAttribute("sId"));
		reservationDTO.setLargeCategory((String)session.getAttribute("largeCategory"));
		reservationDTO.setWashMenuId((String)session.getAttribute("washMenuId"));
		reservationDTO.setEquipmentCode((String)session.getAttribute("equipmentCode"));
		
		return reservationDTO;
		
	}

	//사용안함
	@GetMapping("/step/selectWashing")
	@Deprecated
	public void selectWashing(HttpServletRequest request, Model model) {
		String categoryId = request.getParameter("categoryId");
	}
	
}
