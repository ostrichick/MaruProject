package ezen.maru.pjt.service.qna;

import java.util.List;

import ezen.maru.pjt.vo.QnaVo;

public interface QnaService {

	default public int countQna(QnaVo qnaVo) {
		return 0;
	}

	default List<QnaVo> getQnaList(QnaVo qnaVo) {
		return null;
	}

	default int writeQna(QnaVo qnaVo) {
		return 0;
	}

	default int editQna(QnaVo qnaVo) {
		return 0;
	}

	default int removeQna(QnaVo qnaVo) {
		return 0;
	}

}
