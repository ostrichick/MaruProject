package ezen.maru.pjt.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Optional;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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

  @Autowired(required = false)
  public void setMUpdateService(@Qualifier("member_update") MemberInfoService mUpdateService) {
    this.mUpdateService = mUpdateService;
  }

  // checkedItemList = ???????????? ???????????? ????????? ??????????????? cart_idx
  // cart_product_number = ???????????? ?????? ???????????? ?????? ??????
  // product_idx_list = ???????????? ?????? ??????????????? product_idx
  @PostMapping("/order")
  public String order(@RequestParam(required = false) String[] checkedItemList, String[] cart_product_number,
      String[] product_idx_list, int[] product_price_list, String order_total_price, HttpServletRequest req,
      Model model) {
    try {
      HttpSession session = req.getSession();
      String member_id = (String) session.getAttribute("member_id");
      MemberInfoVo memberInfoVo = mUpdateService.getMember(member_id);

      System.out.println("Controller checkedItemList : " + Arrays.toString(checkedItemList));
      System.out.println("Controller cart_product_number : " + Arrays.toString(cart_product_number));
      System.out.println("Controller product_idx_list : " + Arrays.toString(product_idx_list));
      System.out.println("Controller product_price_list : " + Arrays.toString(product_price_list));
      System.out.println("Controller order_total_price : " + order_total_price);

      List<OrderProductVo> orderProductList = new ArrayList<OrderProductVo>();
      if (product_idx_list.length == cart_product_number.length) {
        for (int i = 0; i < product_idx_list.length; i++) {
          OrderProductVo orderProductVo = new OrderProductVo();
          orderProductVo.setProduct_idx(Integer.parseInt(product_idx_list[i]));
          orderProductVo.setOrder_quantity(Integer.parseInt(cart_product_number[i]));
          orderProductVo.setProduct_price(product_price_list[i]);
          orderProductList.add(orderProductVo);
        }
      }

      model.addAttribute("memberInfoVo", memberInfoVo);
      model.addAttribute("order_total_price", order_total_price);
      session.setAttribute("checkedItemList", checkedItemList);
      session.setAttribute("orderProductList", orderProductList);
      // ????????? List<OrderProductVo> ??????????????? ???????????? ?????????. ??????????????? ???????????? ?????? ???
    } catch (Exception e) {
      e.printStackTrace();
    }
    return "order/order";
  }

  @RequestMapping("/order_process")
  @ResponseBody
  public Map<String, Object> order_process(@RequestBody Map<String, Object> rsp) {
    boolean validate = rsp.get("paid_amount").equals(rsp.get("order_total_price"));
    rsp.put("money_validate", validate);
    if (validate) {
      rsp.put("message", "?????? ??????");
    } else {
      rsp.put("message", "????????? ???????????? ??????");
    }

    return rsp;
  }

  @SuppressWarnings("unchecked")
  @PostMapping("/order_complete")
  public String order_complete(HttpServletRequest req, OrderVo orderVo, String rsp, Model model) {
    HttpSession session = req.getSession();
    Optional<Object> optional_member_idx = Optional.ofNullable(session.getAttribute("member_idx"));
    int member_idx = (int) optional_member_idx.get();
    orderVo.setMember_idx(member_idx);
    System.out.println("--order_complete controller--");
    System.out.println(orderVo);
    System.out.println(rsp);
    String[] checkedItemList = (String[]) session.getAttribute("checkedItemList");
    Object orderProductList_obj = (Object) session.getAttribute("orderProductList");
    System.out.println("checkedItemList in Controller : " + checkedItemList);
    List<OrderProductVo> orderProductList = null;
    if (orderProductList_obj != null) {
      orderProductList = (ArrayList<OrderProductVo>) orderProductList_obj;
    }
    System.out.println("orderProductList in Controller : " + orderProductList);

    int result = insertService.addOrder(orderVo, checkedItemList, orderProductList);
    System.out.println("result is : " + result);
    model.addAttribute("rsp", rsp);
    System.out.println("rsp is : " + rsp);
    if (result > 0) {
      session.removeAttribute("checkedItemList");
      session.removeAttribute("orderProductList");
    }
    return "order/order_complete";
  }

  @GetMapping("/detail")
  public String detail(String order_idx, Model model) {
    List<OrderVo> orderProductList = new ArrayList<OrderVo>();
    orderProductList = listService.getOneOrder(order_idx);
    System.out.println(orderProductList);
    model.addAttribute("orderProductList", orderProductList);
    return "order/detail";
  }

  @GetMapping("/order_refund")
  public String order_refund() {
    return "order/order_refund";
  }
}
