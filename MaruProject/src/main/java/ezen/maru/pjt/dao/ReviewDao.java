package ezen.maru.pjt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.maru.pjt.vo.ReviewVo;

@Repository
public class ReviewDao {
  private SqlSession sqlSession;
  private final String MAPPER = "ezen.maru.pjt.review";

  @Autowired
  public ReviewDao(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }

  public List<ReviewVo> getReviewList(ReviewVo reviewVo) {
//		System.out.println("reviewVo input in Dao : " + reviewVo);
//		System.out.println("return in DAO : " + sqlSession.selectList(MAPPER + ".getReviewList", reviewVo));
    return sqlSession.selectList(MAPPER + ".getReviewList", reviewVo);
  }

  public int writeReview(ReviewVo reviewVo) {
//		System.out.println("reviewVo in DAO : " + reviewVo);
    return sqlSession.insert(MAPPER + ".writeReview", reviewVo);
  }

  public int editReview(ReviewVo reviewVo) {
    return sqlSession.update(MAPPER + ".editReview", reviewVo);
  }

  public int removeReview(ReviewVo reviewVo) {
//		System.out.println("reviewVo in DAO: " + reviewVo);
    return sqlSession.update(MAPPER + ".removeReview", reviewVo);
  }

}