package ezen.maru.pjt.service.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.maru.pjt.dao.ReviewDao;
import ezen.maru.pjt.vo.ReviewVo;

@Service("rv_list")
public class ReviewListService implements ReviewService {
  private ReviewDao qnaDao;

  @Autowired(required = false)
  public ReviewListService(ReviewDao qnaDao) {
    this.qnaDao = qnaDao;
  }

  @Override
  public List<ReviewVo> getReviewList(ReviewVo qnaVo) {
    return qnaDao.getReviewList(qnaVo);
  }

}
