package ezen.maru.pjt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.maru.pjt.vo.FileVo;

@Repository
public class AdminDao {
	private SqlSession sqlSession;
	private final String MAPPER = "ezen.maru.pjt.admin";

	@Autowired(required = false)
	public AdminDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public int upload(FileVo fileVo) {
		return sqlSession.insert(MAPPER + ".upload", fileVo);
	}

	public List<FileVo> getFileList() {
		return sqlSession.selectList(MAPPER + ".getFileList");
	}
}
