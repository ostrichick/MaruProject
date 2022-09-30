package ezen.maru.pjt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.maru.pjt.vo.BoardVo;

@Repository
public class BoardDao {
	private SqlSession sqlSession;
	private final String MAPPER = "ezen.maru.pjt.board";

	@Autowired
	public BoardDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<BoardVo> getNoticeList() {
		return sqlSession.selectList(MAPPER + ".getNoticeList");
	}

	public int noticeWriteProcess(BoardVo boardVo) {
		return sqlSession.insert(MAPPER + ".noticeWriteProcess", boardVo);
	}

	public BoardVo getNotice(int idx) {
		sqlSession.update(MAPPER + ".upHit", idx);
		return sqlSession.selectOne(MAPPER + ".getNotice", idx);
	}

	public int noticeEditProcess(BoardVo boardVo) { 
		return sqlSession.update(MAPPER + ".noticeEditProcess", boardVo);
	}

	public int deleteNotice(int idx) {
		return sqlSession.update(MAPPER + ".noticeDeleteProcess", idx);
	}
	/////////////////////////////////////
/////////////////////////////////////

	public int qnaWriteProcess(BoardVo boardVo) {  
		return sqlSession.insert(MAPPER + ".qnaWriteProcess", boardVo);
	}
	
	public int qnaIsanswered(BoardVo boardVo) {
		return sqlSession.insert(MAPPER + ".qnaIsanswered", boardVo); 
	}
	
	public List<BoardVo> getQnaList() {
		return sqlSession.selectList(MAPPER + ".getQnaList");
	}

	public int deleteQna(int idx) {
		return sqlSession.update(MAPPER + ".qnaDeleteprocess", idx); 
	}
	
	public int qnaEditProcess(BoardVo boardVo) { 
		return sqlSession.update(MAPPER + ".qnaEditProcess", boardVo);
	}

}