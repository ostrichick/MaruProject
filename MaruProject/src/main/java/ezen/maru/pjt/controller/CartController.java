package ezen.maru.pjt.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import ezen.maru.pjt.service.cart.CartService;
import ezen.maru.pjt.vo.CartVo;

@Controller
@RequestMapping("/cart")
// 회원들이 조회하고 관리자가 업로드, 수정, 삭제할 수 있는 상품 페이지 관련 컨트롤러
public class CartController {
	CartService insertService, listService, updateService, deleteService;

	@Autowired(required = false)
	public void setListService(@Qualifier("c_list") CartService listService) {
		this.listService = listService;
	}

	@Autowired(required = false)
	public void setInsertService(@Qualifier("c_insert") CartService insertService) {
		this.insertService = insertService;
	}

	@Autowired(required = false)
	public void setUpdateService(@Qualifier("c_update") CartService updateService) {
		this.updateService = updateService;
	}

	@Autowired(required = false)
	public void setDeleteService(@Qualifier("c_delete") CartService deleteService) {
		this.deleteService = deleteService;
	}

	@GetMapping("/")
	public String list(Model model) {
		List<CartVo> cartList = listService.getCartList();
		model.addAttribute("cartList", cartList);
		return "product/list";
	}

//////////////////////////
	// 이하 관리자 전용 //
	//////////////////////
	@GetMapping("/add")
	public String add() {
		return "cart/add";
	}

	@PostMapping("/add_process")
	public String cart_add(HttpServletRequest req, CartVo cartVo, Model model) {
		HttpSession session = req.getSession();
		Optional<Object> optional_member_idx = Optional.ofNullable(session.getAttribute("member_idx"));
		int member_idx = (int) optional_member_idx.get();
		cartVo.setMember_idx(member_idx);
		System.out.println(cartVo.toString());
		int result = insertService.addCart(cartVo);
		String viewPage = "redirect:/";
		if (result == 1) {// 정상적으로 입력된 경우, 해당 상품 페이지로 이동할 것
			viewPage = "redirect:/";
		}
		return viewPage;
	}

//	@GetMapping("/edit")
//	public String edit(int product_idx, Model model) {
//		ProductVo productVo = listService.getProduct(product_idx);
//		model.addAttribute("product", productVo);
//		return "product/edit";
//	}
//
//	@PostMapping("/edit_process")
//	public String edit_process(ProductVo productVo, MultipartRequest uploadFile, HttpServletRequest request,
//			Model model) {
//		int result = updateService.productEdit(productVo, uploadFile, request);
//		String viewPage = "redirect:/product/edit?product_idx=" + productVo.getProduct_idx();
//		if (result == 1) {// 정상적으로 입력된 경우, 해당 상품 페이지로 이동할 것
//			viewPage = "redirect:/product/detail?product_idx=" + productVo.getProduct_idx();
//		}
//		return viewPage;
//	}
}
