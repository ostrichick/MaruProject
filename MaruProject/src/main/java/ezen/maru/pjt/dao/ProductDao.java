package ezen.maru.pjt.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

  public List<ProductVo> getProductList(String product_major_category) {
    return sqlSession.selectList(MAPPER + ".getProductList", product_major_category);
  }

  public int productAdd(ProductVo productVo) {
    sqlSession.insert(MAPPER + ".productAdd", productVo);
    return sqlSession.insert(MAPPER + ".productAdd_file", productVo);
  }

  public ProductVo getProduct(int product_idx) {
    sqlSession.update(MAPPER + ".upHit", product_idx);
    return sqlSession.selectOne(MAPPER + ".getProduct", product_idx);
  }

  public int productEdit(ProductVo productVo) {
    return sqlSession.update(MAPPER + ".productUpdate", productVo);
  }

  public int deleteProduct(int product_idx) {
    return sqlSession.update(MAPPER + ".deleteProduct", product_idx);
  }

  public List<ProductVo> getSaleList() {
    return sqlSession.selectList(MAPPER + ".getSaleList");
  }

  public List<ProductVo> getOrderByProductList(String orderBy) {
    Map<String, String> map = new HashMap<String, String>();
    map.put("orderBy", orderBy);
    System.out.println(map);
    return sqlSession.selectList(MAPPER + ".getOrderByProductList", map);
  }

  public List<ProductVo> getPriceRangeProductList(String priceRange) {
    Map<String, Integer> map = new HashMap<String, Integer>();
    if (priceRange.equals("lt50k")) {
      map.put("min", 0);
      map.put("max", 50000);
    } else if (priceRange.equals("50kTo100k")) {
      map.put("min", 50000);
      map.put("max", 100000);
    } else if (priceRange.equals("100kTo200k")) {
      map.put("min", 100000);
      map.put("max", 200000);
    } else if (priceRange.equals("200kTo500k")) {
      map.put("min", 200000);
      map.put("max", 500000);
    } else if (priceRange.equals("500kTo1m")) {
      map.put("min", 500000);
      map.put("max", 1000000);
    } else if (priceRange.equals("gt1m")) {
      map.put("min", 1000000);
      map.put("max", 10000000);
    }
    System.out.println(map);
    return sqlSession.selectList(MAPPER + ".getPriceRangeProductList", map);
  }

  public List<ProductVo> getProductNameProductList(String product_name) {
    Map<String, String> map = new HashMap<String, String>();
    map.put("product_name", product_name);
    System.out.println(map);
    return sqlSession.selectList(MAPPER + ".getProductNameProductList", map);
  }
}
