package ezen.maru.pjt.service.memberinfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.maru.pjt.dao.MemberInfoDao;

@Service("m_select")
public class MemberInfoSelectService implements MemberInfoService {
	private MemberInfoDao memberInfoDao;

	@Autowired(required = false)
	public MemberInfoSelectService(MemberInfoDao memberInfoDao) {
		this.memberInfoDao = memberInfoDao;
	}

	@Override
	public int idDuplicateCheck(String member_id) {
		return memberInfoDao.idDuplicateCheck(member_id);
	}

}
