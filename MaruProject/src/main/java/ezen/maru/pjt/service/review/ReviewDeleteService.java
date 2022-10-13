package ezen.maru.pjt.service.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.maru.pjt.dao.ReviewDao;
import ezen.maru.pjt.vo.ReviewVo;

@Service("rv_delete")
public class ReviewDeleteService implements ReviewService {
  private ReviewDao qnaDao;

  @Autowired(required = false)
  public ReviewDeleteService(ReviewDao qnaDao) {
    this.qnaDao = qnaDao;
  }

  @Override
  public int removeReview(ReviewVo qnaVo) {
    return qnaDao.removeReview(qnaVo);
  }
}
