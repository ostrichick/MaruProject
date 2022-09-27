package ezen.maru.pjt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.maru.pjt.vo.OrderVo;

@Repository
public class OrderDao {
	private SqlSession sqlSession;
	private final String MAPPER = "ezen.maru.pjt.order";

	@Autowired
	public OrderDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<OrderVo> getOrderList(int member_idx) {
		return sqlSession.selectList(MAPPER + ".getOrderList", member_idx);
	}

	public int updateOrder(OrderVo orderVo) {
		return sqlSession.update(MAPPER + ".updateOrder", orderVo);
	}

	public int addOrder(OrderVo orderVo, String[] checkedItemList) {
		sqlSession.delete("ezen.maru.pjt.cart" + ".deleteItems", checkedItemList);
		return sqlSession.update(MAPPER + ".addOrder", orderVo);
	}

	public int deleteOrder(OrderVo orderVo) {
		return sqlSession.delete(MAPPER + ".deleteOrder", orderVo);
	}
}
