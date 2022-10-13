package ezen.maru.pjt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.maru.pjt.vo.QnaVo;

@Repository
public class QnaDao {
  private SqlSession sqlSession;
  private final String MAPPER = "ezen.maru.pjt.qna";

  @Autowired
  public QnaDao(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }

  public List<QnaVo> getQnaList(QnaVo qnaVo) {
//		System.out.println("qnaVo input in Dao : " + qnaVo);
//		System.out.println("return in DAO : " + sqlSession.selectList(MAPPER + ".getQnaList", qnaVo));
    return sqlSession.selectList(MAPPER + ".getQnaList", qnaVo);
  }

  public List<QnaVo> getAnswerList(QnaVo qnaVo) {
    return sqlSession.selectList(MAPPER + ".getAnswerList", qnaVo);
  }

  public int writeQna(QnaVo qnaVo) {
    return sqlSession.insert(MAPPER + ".writeQna", qnaVo);
  }

  public int editQna(QnaVo qnaVo) {
    return sqlSession.update(MAPPER + ".editQna", qnaVo);
  }

  public int removeQna(QnaVo qnaVo) {
//		System.out.println("qnaVo in DAO: " + qnaVo);
    return sqlSession.update(MAPPER + ".removeQna", qnaVo);
  }

  public List<QnaVo> getAllQuestionList() {
    return sqlSession.selectList(MAPPER + ".getAllQuestionList");
  }

  public int writeAnswer(QnaVo qnaVo) {
    System.out.println("qnaVo in DAO : " + qnaVo);
    System.out.println(qnaVo.getParent_idx());
    sqlSession.insert(MAPPER + ".writeQna", qnaVo);
    return sqlSession.update(MAPPER + ".markAnswered", qnaVo);
  }

}