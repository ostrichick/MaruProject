package ezen.maru.pjt.service.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.maru.pjt.dao.ReviewDao;
import ezen.maru.pjt.vo.ReviewVo;

@Service("rv_insert")
public class ReviewInsertService implements ReviewService {
  private ReviewDao qnaDao;

  @Autowired(required = false)
  public ReviewInsertService(ReviewDao qnaDao) {
    this.qnaDao = qnaDao;
  }

  @Override
  public int writeReview(ReviewVo qnaVo) {
    return qnaDao.writeReview(qnaVo);
  }
}
