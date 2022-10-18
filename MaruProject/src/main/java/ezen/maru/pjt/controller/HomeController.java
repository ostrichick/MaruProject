package ezen.maru.pjt.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import ezen.maru.pjt.service.product.ProductService;
import ezen.maru.pjt.vo.ProductVo;

@Controller

public class HomeController {
  ProductService listService;

  @Autowired(required = false)
  public void setListService(@Qualifier("p_list") ProductService listService) {
    this.listService = listService;
  }

  @GetMapping("/")
  public String index(Model model) {
    List<ProductVo> saleList = new ArrayList<ProductVo>();
    saleList = listService.getSaleList();
    model.addAttribute("indexHeader", "Y");
    model.addAttribute("saleList", saleList);
    System.out.println(saleList);
    // 할인 중인 제품 받기

    return "index";
  }

  @GetMapping("/index")
  public String indexdo(Model model) {
    List<ProductVo> saleList = new ArrayList<ProductVo>();
    saleList = listService.getSaleList();
    model.addAttribute("indexHeader", "Y");
    model.addAttribute("saleList", saleList);
    System.out.println(saleList);
    return "index";
  }

  @GetMapping("/contact")
  public String contact() {
    return "contact";
  }

  @GetMapping("/error")
  public String error() {
    return "error/error";
  }

  @GetMapping("/product")
  public String product() {
    return "product";
  }

  @GetMapping("/about")
  public String about() {
    return "about";
  }

  @GetMapping("/index2")
  public String index2do() {
    return "index2";
  }

  @GetMapping("/blog")
  public String blog() {
    return "blog";
  }

  @GetMapping("/blog-detail")
  public String blog_detail() {
    return "blog-detail";
  }

  @GetMapping("/review")
  public String review() {
    return "review";
  }

  @GetMapping("/faq")
  public String faq() {
    return "/faq/list";
  }

}
