package ezen.maru.pjt.service.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.maru.pjt.dao.ReviewDao;
import ezen.maru.pjt.vo.ReviewVo;

@Service("rv_update")
public class ReviewUpdateService implements ReviewService {
  private ReviewDao reviewDao;

  @Autowired(required = false)
  public ReviewUpdateService(ReviewDao reviewDao) {
    this.reviewDao = reviewDao;
  }

  @Override
  public int editReview(ReviewVo reviewVo) {
    return reviewDao.editReview(reviewVo);
  }

}
