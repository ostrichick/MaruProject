package ezen.maru.pjt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class HomeController {
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("indexHeader", "Y");
		return "index";
	}

	@GetMapping("/index")
	public String indexdo(Model model) {
		model.addAttribute("indexHeader", "Y");
		return "index";
	}

	@GetMapping("/index2")
	public String index2do() {
		return "index2";
	}

	@GetMapping("/about")
	public String about() {
		return "about";
	}

	@GetMapping("/blog")
	public String blog() {
		return "blog";
	}

	@GetMapping("/blog-detail")
	public String blog_detail() {
		return "blog-detail";
	}

	@GetMapping("/contact")
	public String contact() {
		return "contact";
	}

	@GetMapping("/home-02")
	public String home_02() {
		return "home-02";
	}

	@GetMapping("/home-03")
	public String home_03() {
		return "home-03";
	}

	@GetMapping("/product")
	public String product() {
		return "product";
	}

	@GetMapping("/product2")
	public String product2() {
		return "product2";
	}

	@GetMapping("/product-detail")
	public String product_detail() {
		return "product-detail";
	}

	@GetMapping("/shopping-cart")
	public String shopping_cart() {
		return "shopping-cart";
	}

	@GetMapping("/review")
	public String review() {
		return "review";
	}

	@GetMapping("/qnaservice")
	public String qnaservice() {
		return "qnaservice";
	}

	@GetMapping("/faq")
	public String faq() {
		return "faq";
	}

	@GetMapping("/faq_write")
	public String faq_write() {
		return "faq_write";
	}

	@GetMapping("/edit")
	public String edit() {
		return "edit";
	}

}
