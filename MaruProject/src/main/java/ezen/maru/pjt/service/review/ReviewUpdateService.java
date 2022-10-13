package ezen.maru.pjt.service.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.maru.pjt.dao.ReviewDao;
import ezen.maru.pjt.vo.ReviewVo;

@Service("rv_update")
public class ReviewUpdateService implements ReviewService {
  private ReviewDao qnaDao;

  @Autowired(required = false)
  public ReviewUpdateService(ReviewDao qnaDao) {
    this.qnaDao = qnaDao;
  }

  @Override
  public int editReview(ReviewVo qnaVo) {
    return qnaDao.editReview(qnaVo);
  }

}
