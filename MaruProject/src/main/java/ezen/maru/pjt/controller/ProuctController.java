package ezen.maru.pjt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import ezen.maru.pjt.service.product.ProductService;
import ezen.maru.pjt.vo.ProductVo;

@Controller
@RequestMapping("/product")
public class ProuctController {
	ProductService addService, listService, editService, deleteService;

	@Autowired(required = false)
	public void setListService(@Qualifier("p_list") ProductService listService) {
		this.listService = listService;
	}

	@Autowired(required = false)
	public void setAddService(@Qualifier("p_add") ProductService addService) {
		this.addService = addService;
	}

	@Autowired(required = false)
	public void setEditService(@Qualifier("p_edit") ProductService editService) {
		this.editService = editService;
	}

	@Autowired(required = false)
	public void setDeleteService(@Qualifier("p_delete") ProductService deleteService) {
		this.deleteService = deleteService;
	}

	@GetMapping("/list")
	public String list(Model model) {
		List<ProductVo> productList = listService.getProductList();
		model.addAttribute("productList", productList);
		return "product/list";
	}

//////////////////////////
	// 이하 관리자 전용 //
	//////////////////////
	@GetMapping("/add")
	public String add() {
		return "product/add";
	}

}
