package org.sunw.self.client.common.reservation.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

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

@Controller
@RequestMapping("/reservation")
public class ReservationController {
	
	@Autowired
	MainService mainService;

	
	@GetMapping("/step/selectMachine")
	public void selectMachine(HttpServletRequest request, Model model) {
		String sId = request.getParameter("sId");
		
	}
	
	@GetMapping("/step/selectWashing")
	public void selectWashing(HttpServletRequest request, Model model) {
		String categoryId = request.getParameter("categoryId");
		
	}
	
	@GetMapping("/step/selectCourse")
	public void selectCourse(HttpServletRequest request, Model model) {
		String largeCategory = request.getParameter("largeCategory");
	}
	
}
