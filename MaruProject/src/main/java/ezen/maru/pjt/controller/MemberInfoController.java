package ezen.maru.pjt.controller;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.server.ResponseStatusException;

import ezen.maru.pjt.service.board.BoardService;
import ezen.maru.pjt.service.certification.CertificationService;
import ezen.maru.pjt.service.certification.PhoneVerification;
import ezen.maru.pjt.service.memberinfo.MemberInfoService;
import ezen.maru.pjt.service.order.OrderService;
import ezen.maru.pjt.service.qna.QnaService;
import ezen.maru.pjt.service.review.ReviewService;
import ezen.maru.pjt.vo.MemberInfoVo;
import ezen.maru.pjt.vo.OrderVo;
import ezen.maru.pjt.vo.QnaVo;
import ezen.maru.pjt.vo.ReviewVo;

@Controller
@RequestMapping("/member")
// 회원가입, 로그인, 정보수정, 탈퇴 등 회원 관리기능 컨트롤러
public class MemberInfoController {

  MemberInfoService signupService, signinService, updateService, selectService, mlistService;
  BoardService blistService;
  OrderService olistService;
  ReviewService rvlistService;
  QnaService qlistService;
  CertificationService certificationService;

  @Autowired
  BCryptPasswordEncoder bCryptPasswordEncoder;

  @Autowired(required = false)
  public void setListService2(@Qualifier("b_list") BoardService blistService) {
    this.blistService = blistService;
  }

  @Autowired(required = false)
  public void setOListService2(@Qualifier("o_list") OrderService olistService) {
    this.olistService = olistService;
  }

  @Autowired(required = false)
  public void setRvListService2(@Qualifier("rv_list") ReviewService rvlistService) {
    this.rvlistService = rvlistService;
  }

  @Autowired(required = false)
  public void setQListService2(@Qualifier("q_list") QnaService qlistService) {
    this.qlistService = qlistService;
  }

  @Autowired(required = false)
  public void setSignupService(@Qualifier("signup") MemberInfoService signupService) {
    this.signupService = signupService;
  }

  @Autowired(required = false)
  public void setSigninService(@Qualifier("signin") MemberInfoService signinService) {
    this.signinService = signinService;
  }

  @Autowired(required = false)
  public void setSelectService(@Qualifier("m_select") MemberInfoService selectService) {
    this.selectService = selectService;
  }

  @Autowired(required = false)
  public void setUpdateService(@Qualifier("member_update") MemberInfoService updateService) {
    this.updateService = updateService;
  }

  @Autowired(required = false)
  public void setMListService(@Qualifier("m_list") MemberInfoService mlistService) {
    this.mlistService = mlistService;
  }

  @Autowired(required = false)
  public void setCertificationService(@Qualifier("cert_sms") CertificationService certificationService) {
    this.certificationService = certificationService;
  }

  @GetMapping("/signup") // 회원가입 페이지 요청
  public String member_signup() {
    return "member/signup";
  }

  @PostMapping("/check/sendSMS")
  public @ResponseBody boolean sendSMS(@RequestParam("phoneNumber") String phoneNumber,
      HttpServletRequest req, HttpServletResponse response) {
    if (phoneNumber == null || !phoneNumber.matches("01[0-9]{8,9}")) {
      response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
      return false;
    }
    HttpSession session = req.getSession();
    synchronized (session) {
      PhoneVerification state = (PhoneVerification) session.getAttribute("phoneVerification");
      if (state == null) {
        state = new PhoneVerification();
        session.setAttribute("phoneVerification", state);
      }
      synchronized (state) {
        long now = System.currentTimeMillis();
        if (!state.canSend(now)) {
          response.setStatus(429);
          return false;
        }
        state.clearChallenge();
        String code = PhoneVerification.generateCode();
        certificationService.certifiedPhoneNumber(phoneNumber, code);
        state.recordSent(phoneNumber, code, now);
        return true;
      }
    }
  }

  @PostMapping("/check/verifySMS")
  public @ResponseBody boolean verifySMS(@RequestParam("phoneNumber") String phoneNumber,
      @RequestParam("code") String code, HttpServletRequest req) {
    PhoneVerification state = phoneVerification(req);
    return state != null && state.verify(phoneNumber, code, System.currentTimeMillis());
  }

  private PhoneVerification phoneVerification(HttpServletRequest req) {
    HttpSession session = req.getSession(false);
    return session == null ? null : (PhoneVerification) session.getAttribute("phoneVerification");
  }

  @ResponseBody
  @RequestMapping(value = "/check/idDuplicate", method = RequestMethod.POST)
  public int idDuplicateCheck(String member_id) throws Exception {
    int result = selectService.idDuplicateCheck(member_id);
    System.out.println("DuplicateCheck result is : " + result);
    return result;
  }

  @PostMapping("/signup_process") // 회원가입 처리 요청
  public String signup_process(MemberInfoVo memberInfoVo, Model model, HttpServletRequest req) {
    PhoneVerification state = phoneVerification(req);
    if (state == null || !state.isVerifiedPhone(memberInfoVo.getMember_phone(), System.currentTimeMillis())) {
      return "redirect:/member/signup?verification=required";
    }
    int id_result = selectService.idDuplicateCheck(memberInfoVo.getMember_id());
    System.out.println("id_result : " + id_result);
    String viewPage = "member/signup";
    if (id_result != 1) { // 아이디 중복을 다시 체크하고 중복이 아니면 진행
      String input_member_pw = memberInfoVo.getMember_pw();
      String member_pw = bCryptPasswordEncoder.encode(input_member_pw);
      // form에서 받아온 비밀번호를 암호화해여 vo객체에 저장
      memberInfoVo.setMember_pw(member_pw);
      int result = signupService.signup(memberInfoVo);

      if (result == 1) {
        req.getSession().removeAttribute("phoneVerification");
        viewPage = "redirect:/";
        userSessionUpdate(memberInfoVo, req);
      }
    }
    return viewPage;
  }
//////////////////
  // 회원가입 끝
  ////////////////

  @GetMapping("/signin") // 로그인 페이지
  public String signin(HttpServletRequest req) {
    String referrer = req.getHeader("Referer");
    req.getSession().setAttribute("prevPage", referrer);
    return "member/signin";
  }

  @GetMapping("/find") // 아이디 비밀번호 찾기 선택 페이지
  public String find(HttpServletRequest req) {

    return "member/find";
  }

  @PostMapping("/signin_process") // 로그인 요청
  public String signin_process(MemberInfoVo memberInfoVo, HttpServletRequest req, RedirectAttributes redirectAttributes)
      throws Exception {
    String viewPage = "member/signin";
//  System.out.println(bCryptPasswordEncoder.encode("123"));
    MemberInfoVo memberInfoVoFromDB = signinService.getCryptedMemberPw(memberInfoVo);
    boolean pwMatchResult = false;
    if (memberInfoVoFromDB != null) {
      if (memberInfoVoFromDB.getMember_pw() != null) {
        String getCryptedMemberPw = memberInfoVoFromDB.getMember_pw();
        pwMatchResult = bCryptPasswordEncoder.matches(memberInfoVo.getMember_pw(), getCryptedMemberPw);
      }
    } else {
      redirectAttributes.addFlashAttribute("LoginFailMessage", "로그인에 실패했습니다. 아이디와 비밀번호를 확인해주세요.");
      viewPage = "redirect:/member/signin";
    }
    // 입력받은 값과 암호화된 값을 matches로 비교
    if (pwMatchResult) {
      userSessionUpdate(memberInfoVoFromDB, req);
      viewPage = "redirect:/";
    }
    return viewPage;
  }

  @GetMapping("/signout") // 로그아웃
  public String signout(HttpServletRequest req) {
    HttpSession session = req.getSession();
    session.invalidate();
    return "redirect:/";
  }

  @GetMapping("/myinfo") // 내 회원정보 페이지
  public String myinfo(HttpServletRequest req, Model model) {
    HttpSession session = req.getSession();
    String member_id = (String) session.getAttribute("member_id");
    int member_idx = (int) session.getAttribute("member_idx");
    MemberInfoVo memberInfoVo = updateService.getMember(member_id);
    model.addAttribute("memberInfoVo", memberInfoVo);

    List<OrderVo> orderList = new ArrayList<OrderVo>();
    orderList = olistService.getOrderList(member_idx);
    model.addAttribute("orderList", orderList);

    List<OrderVo> orderProductList = new ArrayList<OrderVo>();
    orderProductList = olistService.getOrderProductList(member_idx);
    model.addAttribute("orderProductList", orderProductList);
    System.out.println("orderProductList controller: " + orderProductList);

    List<ReviewVo> reviewList = new ArrayList<ReviewVo>();
    reviewList = rvlistService.getReviewListMember(member_idx);
    model.addAttribute("reviewList", reviewList);

    List<QnaVo> qnaList = new ArrayList<QnaVo>();
    qnaList = qlistService.getQnaListMember(member_idx);
    model.addAttribute("qnaList", qnaList);

    List<QnaVo> qnaAnswerList = new ArrayList<QnaVo>();
    qnaAnswerList = qlistService.getQnaAnswerListMember(member_idx);
    model.addAttribute("qnaAnswerList", qnaAnswerList);
    System.out.println(qnaAnswerList);

    Map<String, String> memberStats = new HashMap<String, String>();
    memberStats = mlistService.getMemberStats(member_idx);
    model.addAttribute("memberStats", memberStats);
    System.out.println(memberStats);

    return "member/myinfo";
  }

  @ResponseBody
  @RequestMapping(value = "/check/pw", method = RequestMethod.POST)
  public boolean pw(MemberInfoVo memberInfoVo, HttpServletRequest req) throws Exception {
    HttpSession session = req.getSession(false);
    if (session == null || !(session.getAttribute("member_id") instanceof String)
        || memberInfoVo == null || memberInfoVo.getMember_pw() == null
        || memberInfoVo.getMember_pw().isEmpty()) {
      return false;
    }
    // Never trust an account ID supplied by the browser for a password oracle.
    memberInfoVo.setMember_id((String) session.getAttribute("member_id"));
    MemberInfoVo memberInfoVoFromDB = signinService.getCryptedMemberPw(memberInfoVo);
    return memberInfoVoFromDB != null && memberInfoVoFromDB.getMember_pw() != null
        && bCryptPasswordEncoder.matches(memberInfoVo.getMember_pw(), memberInfoVoFromDB.getMember_pw());
  }

  @GetMapping("/myinfo_edit") // 내 회원정보 페이지
  public String myinfo_edit(HttpServletRequest req, Model model) {
    HttpSession session = req.getSession();
    String member_id = (String) session.getAttribute("member_id");
    MemberInfoVo memberInfoVo = updateService.getMember(member_id);
    model.addAttribute("memberInfoVo", memberInfoVo);
    String deleteCsrfToken = (String) session.getAttribute("memberDeleteCsrfToken");
    if (deleteCsrfToken == null) {
      deleteCsrfToken = UUID.randomUUID().toString();
      session.setAttribute("memberDeleteCsrfToken", deleteCsrfToken);
    }
    model.addAttribute("memberDeleteCsrfToken", deleteCsrfToken);
    return "member/myinfo_edit";
  }

  @PostMapping("/updateinfo") // 회원정보 수정
  public String update(MemberInfoVo memberInfoVo, HttpServletRequest req, RedirectAttributes redirect) {
    HttpSession session = req.getSession();
    String member_id = (String) session.getAttribute("member_id");
    if (member_id == null) {
      return "redirect:/member/signin";
    }
    MemberInfoVo currentMember = updateService.getMember(member_id);
    if (currentMember == null) {
      return "redirect:/member/signin";
    }
    if (!Objects.equals(currentMember.getMember_phone(), memberInfoVo.getMember_phone())) {
      PhoneVerification state = phoneVerification(req);
      if (state == null || !state.isVerifiedPhone(memberInfoVo.getMember_phone(), System.currentTimeMillis())) {
        return "redirect:/member/myinfo_edit?verification=required";
      }
    }
    int member_idx = (int) session.getAttribute("member_idx");
    memberInfoVo.setMember_id(member_id);
    memberInfoVo.setMember_idx(member_idx);
    String input_member_pw = memberInfoVo.getMember_pw();
    String member_pw = bCryptPasswordEncoder.encode(input_member_pw);

    memberInfoVo.setMember_pw(member_pw);
    int result = updateService.update(memberInfoVo);
    String viewPage = "redirect:/member/myinfo";
    if (result == 1) {
      session.removeAttribute("phoneVerification");
      redirect.addFlashAttribute("updateResult", "회원정보 수정 성공");
      viewPage = "redirect:/";
      userSessionUpdate(memberInfoVo, req);
    }
    return viewPage;
  }

  @PostMapping("/deleteprocess") // 회원 탈퇴는 로그인 세션과 CSRF 토큰을 확인한 후 처리
  public String delete(@RequestParam(value = "csrfToken", required = false) String csrfToken,
      HttpServletRequest req, RedirectAttributes redirect) {
    HttpSession session = req.getSession(false);
    if (session == null || !(session.getAttribute("member_id") instanceof String)
        || !(session.getAttribute("member_idx") instanceof Integer)) {
      return "redirect:/member/signin";
    }
    String expectedToken = (String) session.getAttribute("memberDeleteCsrfToken");
    if (expectedToken == null || csrfToken == null || !MessageDigest.isEqual(
        expectedToken.getBytes(StandardCharsets.US_ASCII), csrfToken.getBytes(StandardCharsets.US_ASCII))) {
      throw new ResponseStatusException(HttpStatus.FORBIDDEN);
    }
    String memberId = (String) session.getAttribute("member_id");
    int memberIdx = (Integer) session.getAttribute("member_idx");
    MemberInfoVo memberInfoVo = updateService.getMember(memberId);
    if (memberInfoVo == null || memberInfoVo.getMember_idx() != memberIdx
        || !memberId.equals(memberInfoVo.getMember_id()) || !"N".equals(memberInfoVo.getDeleted_yn())) {
      throw new ResponseStatusException(HttpStatus.FORBIDDEN);
    }
    session.removeAttribute("memberDeleteCsrfToken");
    int result = updateService.delete(memberInfoVo);
    String viewPage = "redirect:/member/myinfo";
    if (result == 1) {
      redirect.addFlashAttribute("updateResult", "성공적으로 탈퇴되었습니다");
      viewPage = "redirect:/";
      session.invalidate();
    }
    return viewPage;
  }

  public void userSessionUpdate(MemberInfoVo memberInfoVo, HttpServletRequest req) {
    HttpSession session = req.getSession();
    session.setAttribute("member_id", memberInfoVo.getMember_id());
    session.setAttribute("member_name", memberInfoVo.getMember_name());
    session.setAttribute("member_email", memberInfoVo.getMember_email());
    session.setAttribute("member_grade", memberInfoVo.getMember_grade());
    session.setAttribute("member_admin", memberInfoVo.getMember_admin());
    session.setAttribute("member_idx", memberInfoVo.getMember_idx());
  }
}
