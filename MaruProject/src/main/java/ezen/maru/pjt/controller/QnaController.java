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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ezen.maru.pjt.service.board.BoardService;
import ezen.maru.pjt.vo.BoardVo;

@Controller
@RequestMapping("/qna")
//회원들이 작성하고 관리자가 답변, 삭제 할 수 있는 1:1 문의 게시판 컨트롤러
public class QnaController {
	BoardService insertService, listService, updateService, deleteService;

	// 유저 : 리스트 없이 그냥 질문만 남김?
	// 관리자는 관리자 대쉬보드에서 목록으로 보고 하나씩 답변?

	@Autowired(required = false)
	public void setInsertService(@Qualifier("b_insert") BoardService insertService) {
		this.insertService = insertService;
	}

	@Autowired(required = false)
	public void setListService(@Qualifier("b_list") BoardService listService) {
		this.listService = listService;
	}

	@Autowired(required = false)
	public void setUpdateService(@Qualifier("b_update") BoardService updateService) {
		this.updateService = updateService;
	}

	@Autowired(required = false)
	public void setDeleteService(@Qualifier("b_delete") BoardService deleteService) {
		this.deleteService = deleteService;
	}

	@GetMapping("/write")
	public String write() {
		return "qna/write";
	}
	
	
	@PostMapping("/Edit")
	public String Esdit(BoardVo boardVo, RedirectAttributes redirect) {
		int result = updateService.qnaEditProcess(boardVo);
		int idx = boardVo.getIdx();
		String viewPage = "redirect:/member/myinfo";
		System.out.println("result: " + result);
		if (result == 1) {
			List<BoardVo> qnaList = listService.getQnaList();
			redirect.addFlashAttribute("qnaList", qnaList);
			viewPage = "redirect:/member/myinfo?idx=" + idx;
		}
		return viewPage;
	}


	@PostMapping("/write_process")
	public String write_process(BoardVo boardVo, HttpServletRequest req, RedirectAttributes redirect) {
		int result = insertService.qnaWriteProcess(boardVo);
		HttpSession session = req.getSession();
		Optional<Object> optional_member_idx = Optional.ofNullable(session.getAttribute("member_idx"));
		int member_idx = (int) optional_member_idx.get();
		boardVo.setMember_idx(member_idx);
		String viewPage = "redirect:/qna/write";
		if (result == 1) { 
			redirect.addFlashAttribute("qnaWriteResult", "문의가 성공적으로 등록되었습니다."); 
			viewPage = "redirect:/member/myinfo"; 
		} 
		return viewPage; 
	} 
	
	@PostMapping("/qnaisanswered") 
	public String qnaisanswered(BoardVo boardVo, HttpServletRequest req, RedirectAttributes redirect) {
		System.out.println(boardVo.toString());
		int result = insertService.qnaIsanswered(boardVo);
		HttpSession session = req.getSession();
		Optional<Object> optional_member_idx = Optional.ofNullable(session.getAttribute("member_idx"));
		int member_idx = (int) optional_member_idx.get();
		boardVo.setMember_idx(member_idx);
		String viewPage = "redirect:/admin/dashboard"; 
		if (result == 1) { 
			redirect.addFlashAttribute("qnaIsanswered", "답변이 성공적으로 등록되었습니다.");
			viewPage = "redirect:/admin/dashboard"; 
		}  
		return viewPage;
	}
	
	@GetMapping("/delete")
	public String delete(Model model, int idx, RedirectAttributes redirect) {
		int result = deleteService.deleteQna(idx);
		String viewPage = "/member/memberinfo?idx=" + idx;
		if (result == 1) {
			redirect.addFlashAttribute("deleteResult", "성공적으로 삭제되었습니다");
			List<BoardVo> qnaList = listService.getQnaList();
			redirect.addFlashAttribute("qnaList", qnaList);
			viewPage = "redirect:/member/memberinfo";
		}
		return viewPage;
	}
}
