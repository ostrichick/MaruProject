package ezen.maru.pjt.service.board;

import java.util.List;

import ezen.maru.pjt.vo.BoardVo;

public interface BoardService {

	default List<BoardVo> getNoticeList() {
		return null;
	}

	default int noticeWriteProcess(BoardVo boardVo) {
		return 0;
	}

	default int noticeEditProcess(BoardVo boardVo) {
		return 0;
	}

	default int deleteNotice(int idx) {
		return 0;
	}

	default BoardVo getNotice(int idx) {
		return null;
	}

	///////////////////
	// 공지사항 끝 //
	/////////////////

	default int qnaWriteProcess(BoardVo boardVo) {
		return 0;
	}

	default List<BoardVo> getQnaList() {
		return null;
	}

	default int qnaIsanswered(BoardVo boardVo) {
		return 0;
	}
	
	default int deleteQna(int idx) {
		return 0;
	}
	
	default int qnaEditProcess(BoardVo boardVo) {
		return 0;
	}

}
