package ezen.maru.pjt.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ezen.maru.pjt.service.reply.ReplyService;
import ezen.maru.pjt.vo.ReplyVo;

@Controller
@RequestMapping("/notice/reply")
// 공지사항 게시판의 코멘트 기능 컨트롤러
public class ReplyController {

	ReplyService insertService, listService, updateService, deleteService;

	@Autowired(required = false)
	public void setInsertService(@Qualifier("r_insert") ReplyService insertService) {
		this.insertService = insertService;
	}

	@Autowired(required = false)
	public void setListService(@Qualifier("r_list") ReplyService listService) {
		this.listService = listService;
	}

	@Autowired(required = false)
	public void setUpdateService(@Qualifier("r_update") ReplyService updateService) {
		this.updateService = updateService;
	}

	@Autowired(required = false)
	public void setDeleteService(@Qualifier("r_delete") ReplyService deleteService) {
		this.deleteService = deleteService;
	}

	@RequestMapping("/list")
	@ResponseBody
	public List<ReplyVo> reply(ReplyVo replyVo) {
		System.out.println("replyVo in Controller : " + replyVo);
		List<ReplyVo> replyList = listService.getReplyList(replyVo);
		System.out.println("replyList in Controller : " + replyList);
		return replyList;
	}

	@PostMapping("/write")
	@ResponseBody
	public List<ReplyVo> writeReply(HttpServletRequest req, ReplyVo replyVo, RedirectAttributes redirect) {
		HttpSession session = req.getSession();
		Optional<Object> optional_member_idx = Optional.ofNullable(session.getAttribute("member_idx"));
		int member_idx = (int) optional_member_idx.get();
		replyVo.setMember_idx(member_idx);
		System.out.println("replyVo in Controller : " + replyVo);
		insertService.writeReply(replyVo);
		List<ReplyVo> replyList = listService.getReplyList(replyVo);
		return replyList;
	}

	@RequestMapping("/edit")
	@ResponseBody
	public List<ReplyVo> editReply(ReplyVo replyVo, RedirectAttributes redirect) {
		updateService.editReply(replyVo);
		List<ReplyVo> replyList = listService.getReplyList(replyVo);
		return replyList;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public List<ReplyVo> removeReply(Model model, ReplyVo replyVo) {
		deleteService.removeReply(replyVo);
		List<ReplyVo> replyList = listService.getReplyList(replyVo);
		return replyList;
	}
}
