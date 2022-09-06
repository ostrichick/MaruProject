package ezen.maru.pjt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartRequest;

import ezen.maru.pjt.service.product.ProductService;
import ezen.maru.pjt.vo.FileVo;
import ezen.maru.pjt.vo.ProductVo;

@Controller
@RequestMapping("/product")
public class ProuctController {
	ProductService insertService, listService, updateService, deleteService;

	@Autowired(required = false)
	public void setListService(@Qualifier("p_list") ProductService listService) {
		this.listService = listService;
	}

	@Autowired(required = false)
	public void setInsertService(@Qualifier("p_insert") ProductService insertService) {
		this.insertService = insertService;
	}

	@Autowired(required = false)
	public void setUpdateService(@Qualifier("p_update") ProductService updateService) {
		this.updateService = updateService;
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

	@PostMapping("/add_process")
	public String product_add(ProductVo productVo, FileVo fileVo, MultipartRequest uploadFile1,
			MultipartRequest uploadFile2, HttpServletRequest request, Model model) {

		int result = insertService.productAdd(productVo, uploadFile1, uploadFile2, request);

		String viewPage = "board/board_insert";

		if (result == 1) {// 정상적으로 입력된 경우, 해당 상품 페이지로 이동할 것
			viewPage = "product/view";
		}
		return viewPage;
	}
}
