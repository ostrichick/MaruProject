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
import ezen.maru.pjt.vo.ProductVo;

@Controller
@RequestMapping("/product")
// 회원들이 조회하고 관리자가 업로드, 수정, 삭제할 수 있는 상품 페이지 관련 컨트롤러
public class ProductController {
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
	public String list(String category, Model model) {
		String product_major_category = category;
		List<ProductVo> productList = listService.getProductList(product_major_category);
		model.addAttribute("productList", productList);
		return "product/list";
	}

	@GetMapping("/detail")
	public String detail(int product_idx, Model model) {
		ProductVo productVo = listService.getProduct(product_idx);
		model.addAttribute("product", productVo);
		return "product/detail";
	}

//////////////////////////
	// 이하 관리자 전용 //
	//////////////////////
	@GetMapping("/add")
	public String add() {
		return "product/add";
	}

	@PostMapping("/add_process")
	public String product_add(ProductVo productVo, MultipartRequest uploadFile, HttpServletRequest request,
			Model model) {
		int result = insertService.productAdd(productVo, uploadFile, request);
		System.out.println(productVo.toString());
		String viewPage = "redirect:/product/add";
		if (result == 1) {// 정상적으로 입력된 경우, 해당 상품 페이지로 이동할 것
			viewPage = "redirect:/product/list";
		}
		return viewPage;
	}

	@GetMapping("/edit")
	public String edit(int product_idx, Model model) {
		ProductVo productVo = listService.getProduct(product_idx);
		model.addAttribute("product", productVo);
		return "product/edit";
	}

	@PostMapping("/edit_process")
	public String edit_process(ProductVo productVo, MultipartRequest uploadFile, HttpServletRequest request,
			Model model) {
		int result = updateService.productEdit(productVo, uploadFile, request);
		String viewPage = "redirect:/product/edit?product_idx=" + productVo.getProduct_idx();
		if (result == 1) {// 정상적으로 입력된 경우, 해당 상품 페이지로 이동할 것
			viewPage = "redirect:/product/detail?product_idx=" + productVo.getProduct_idx();
		}
		return viewPage;
	}

	@GetMapping("/delete_process")
	public String delete_process(ProductVo productVo, Model model) {
		int product_idx = productVo.getProduct_idx();
		int result = deleteService.deleteProduct(product_idx);
		String viewPage = "redirect:/product/detail?product_idx=" + product_idx;
		if (result == 1) {// 정상적으로 입력된 경우, 해당 상품 페이지로 이동할 것
			viewPage = "redirect:/product/list";
		}
		return viewPage;
	}
}
