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
	public void setInsertService(@Qualifier("p_add") ProductService addService) {
		this.addService = addService;
	}

	// 관리자 전용
	@GetMapping("/add")
	public String add() {
		return "product/add";
	}
}
