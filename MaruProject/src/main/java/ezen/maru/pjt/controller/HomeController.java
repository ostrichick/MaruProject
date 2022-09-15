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

}
