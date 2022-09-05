package ezen.maru.pjt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import ezen.maru.pjt.service.product.ProductService;

@Controller
@RequestMapping("/product")
public class ProuctController {
	ProductService addService, listService, editService, deleteService;

	@Autowired(required = false)
	public void setAddService(@Qualifier("p_add") ProductService addService) {
		this.addService = addService;
	}

	@Autowired(required = false)
	public void setListService(@Qualifier("p_list") ProductService listService) {
		this.listService = listService;
	}

	// 관리자 전용
	@GetMapping("/add")
	public String add() {
		return "product/add";
	}

	@GetMapping("/list")
	public String list() {
		return "product/list";
	}
}
