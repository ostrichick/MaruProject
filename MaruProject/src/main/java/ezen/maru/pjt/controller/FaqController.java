package ezen.maru.pjt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/faq")
public class FaqController {
	
	@GetMapping("/faq")
	public String faq() {
		return "/faq/list";
	}

	@GetMapping("/write")
	public String write() {
		return "/faq/write";
	}

	@GetMapping("/edit")
	public String edit() {
		return "/faq/edit";
	}

}
