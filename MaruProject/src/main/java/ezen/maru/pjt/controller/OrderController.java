package ezen.maru.pjt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import ezen.maru.pjt.service.memberinfo.MemberInfoService;
import ezen.maru.pjt.service.order.OrderService;
import ezen.maru.pjt.vo.MemberInfoVo;
import ezen.maru.pjt.vo.OrderProductVo;
import ezen.maru.pjt.vo.OrderVo;

@Controller
@RequestMapping("/order")
public class OrderController {
	OrderService insertService, listService, updateService, deleteService;
	MemberInfoService mUpdateService;

	@Autowired(required = false)
	public void setListService(@Qualifier("o_list") OrderService listService) {
		this.listService = listService;
	}

	@Autowired(required = false)
	public void setInsertService(@Qualifier("o_insert") OrderService insertService) {
		this.insertService = insertService;
	}

	@Autowired(required = false)
	public void setUpdateService(@Qualifier("o_update") OrderService updateService) {
		this.updateService = updateService;
	}

	@Autowired(required = false)
	public void setDeleteService(@Qualifier("o_delete") OrderService deleteService) {
		this.deleteService = deleteService;
	}

	@GetMapping("/order")
	public String order(@RequestBody List<OrderProductVo> orderProductList, OrderVo orderVo, HttpServletRequest req,
			Model model) {
		HttpSession session = req.getSession();
		String member_id = (String) session.getAttribute("member_id");
		MemberInfoVo memberInfoVo = mUpdateService.getMember(member_id);

		model.addAttribute("memberInfoVo", memberInfoVo);
		System.out.println(memberInfoVo.toString());
		System.out.println(orderProductList.toString());
		System.out.println(orderVo.toString());
		return "order/order";
	}

	@GetMapping("/order_complete")
	public String order_complete() {
		return "order/order_complete";
	}

	@PostMapping("/order_process")
	public String order_process() {
		return "order/order_complete";
	}

	@GetMapping("/order_detail")
	public String order_detail() {
		return "order/order_detail";
	}

	@GetMapping("/order_refund")
	public String order_refund() {
		return "order/order_refund";
	}
}
