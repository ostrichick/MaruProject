package ezen.maru.pjt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ezen.maru.pjt.service.board.BoardService;

@Controller
@RequestMapping("/qna")
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
}
