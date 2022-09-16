package ezen.maru.pjt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {

	@GetMapping("/order")
	public String order() {
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
}
