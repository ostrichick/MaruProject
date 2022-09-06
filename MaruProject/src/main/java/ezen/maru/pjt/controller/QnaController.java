package ezen.maru.pjt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ezen.maru.pjt.service.board.BoardService;

@Controller
@RequestMapping("/qna")
public class QnaController {
	BoardService insertService, listService, updateService, deleteService;

}
