package ezen.maru.pjt.service.board;

import java.util.List;

import ezen.maru.pjt.common.PagingUtil;
import ezen.maru.pjt.vo.BoardVo;

public interface BoardService {

	default public int countBoard() {
		return 0;
	};

	default List<BoardVo> getNoticeList(PagingUtil pagingUtil) {
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
