package ezen.maru.pjt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.maru.pjt.vo.ProductVo;

@Repository
public class ProductDao {
	private SqlSession sqlSession;
	private final String MAPPER = "ezen.maru.pjt.product";

	@Autowired
	public ProductDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<ProductVo> getProductList() {
		return sqlSession.selectList(MAPPER + ".getProductList");
	}

	public int productAdd(ProductVo productVo) {
		return sqlSession.insert(MAPPER + ".productAdd", productVo);
	}

	public ProductVo getProduct(int product_idx) {
		sqlSession.update(MAPPER + ".upHit", product_idx);
		return sqlSession.selectOne(MAPPER + ".getProduct", product_idx);
	}

	public int productEdit(ProductVo productVo) {
		return sqlSession.update(MAPPER + ".productUpdate", productVo);
	}
}
