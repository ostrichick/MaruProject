package ezen.maru.pjt.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import ezen.maru.pjt.service.memberinfo.MemberInfoService;
import ezen.maru.pjt.service.order.OrderService;
import ezen.maru.pjt.vo.MemberInfoVo;

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

	@Autowired(required = false)
	public void setMUpdateService(@Qualifier("member_update") MemberInfoService mUpdateService) {
		this.mUpdateService = mUpdateService;
	}

	@GetMapping("/order")
	public String order(String[] checkedItemList, String order_total_price, HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		String member_id = (String) session.getAttribute("member_id");
		System.out.println(member_id);
		MemberInfoVo memberInfoVo = mUpdateService.getMember(member_id);

		model.addAttribute("memberInfoVo", memberInfoVo);
		model.addAttribute("order_total_price", order_total_price);

		System.out.println(memberInfoVo.toString());
		System.out.println(checkedItemList.length);
		System.out.println(checkedItemList[0]);
		System.out.println(checkedItemList[1]);
		System.out.println(checkedItemList[2]);
		System.out.println(order_total_price.toString());
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
