package ezen.maru.pjt.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.maru.pjt.vo.MemberInfoVo;

@Repository
public class MemberInfoDao {
  private SqlSession sqlSession;

  private final String MAPPER = "ezen.maru.pjt.memberInfo";

  @Autowired(required = false)
  public MemberInfoDao(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }

  public int signup(MemberInfoVo memberInfoVo) {
    return sqlSession.insert(MAPPER + ".signup", memberInfoVo);
  }

  public MemberInfoVo signin(MemberInfoVo memberInfoVo) {
    return sqlSession.selectOne(MAPPER + ".signin", memberInfoVo);
  }

  public MemberInfoVo getMember(String member_id) {
    return sqlSession.selectOne(MAPPER + ".getMember", member_id);
  }

  public int update(MemberInfoVo memberInfoVo) {
    return sqlSession.update(MAPPER + ".updateMember", memberInfoVo);
  }

  public int delete(MemberInfoVo memberInfoVo) {
    return sqlSession.update(MAPPER + ".deactiveMember", memberInfoVo);
  }

  public List<MemberInfoVo> getMemberInfoList() {
    return sqlSession.selectList(MAPPER + ".getMemberList");
  }

  public int idDuplicateCheck(String member_id) {
    return sqlSession.selectOne(MAPPER + ".idDuplicateCheck", member_id);
  }

  public MemberInfoVo getCryptedMemberPw(MemberInfoVo memberInfoVo) {
    return sqlSession.selectOne(MAPPER + ".getCryptedMemberPw", memberInfoVo);
  }

  public int checkPw(MemberInfoVo memberInfoVo) {
    return sqlSession.selectOne(MAPPER + ".checkPw", memberInfoVo);
  }

  public Map<String, String> getMemberStats(int member_idx) {
    Map<String, String> memberStats = new HashMap<String, String>();
    memberStats.put("orderCount", sqlSession.selectOne(MAPPER + ".getOrderCount", member_idx));
//    String result = sqlSession.selectOne(MAPPER + ".getReviewCount", member_idx);
//    System.out.println(result);
    memberStats.put("reviewCount", sqlSession.selectOne(MAPPER + ".getReviewCount", member_idx));
    memberStats.put("qnaCount", sqlSession.selectOne(MAPPER + ".getQnaCount", member_idx));

    System.out.println("memberStats in DAO : " + memberStats);
    return memberStats;
  }

}
