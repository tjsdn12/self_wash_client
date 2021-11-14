package org.sunw.self.client.common.main.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.sunw.self.client.common.domain.ResultDTO;
import org.sunw.self.client.common.main.domain.MainDTO;
import org.sunw.self.client.common.main.domain.StoreInfoVO;
import org.sunw.self.client.common.main.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;
	
	
	@GetMapping("/home")
	public void home(Model model) {
	}

	@GetMapping("/common/register")
	public void register(Model model) {
	}
	
	@PostMapping("/common/searchStore")
	@ResponseBody
	@ResponseStatus(HttpStatus.OK)
	public ResultDTO logInfo(@RequestBody MainDTO mainDTO) {
		ResultDTO result = new ResultDTO();
		List<StoreInfoVO> storeInfoList =mainService.getSearchStore(mainDTO);
		result.setSuccess(storeInfoList!=null);
		result.setData(storeInfoList);
		return result;
	}
	
}
