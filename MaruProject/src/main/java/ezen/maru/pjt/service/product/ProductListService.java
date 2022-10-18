package ezen.maru.pjt.service.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.maru.pjt.dao.ProductDao;
import ezen.maru.pjt.vo.ProductVo;

@Service("p_list")
public class ProductListService implements ProductService {
  private ProductDao productDao;

  @Autowired(required = false)
  public ProductListService(ProductDao productDao) {
    this.productDao = productDao;
  }

  @Override
  public List<ProductVo> getProductList(String product_major_category) {
    return productDao.getProductList(product_major_category);
  }

  @Override
  public ProductVo getProduct(int product_idx) {
    return productDao.getProduct(product_idx);
  }

  @Override
  public List<ProductVo> getSaleList() {
    return productDao.getSaleList();
  }

  @Override
  public List<ProductVo> getOrderByProductList(String orderBy) {
    return productDao.getOrderByProductList(orderBy);
  }

  @Override
  public List<ProductVo> getPriceRangeProductList(String priceRange) {
    return productDao.getPriceRangeProductList(priceRange);
  }

  @Override
  public List<ProductVo> getProductNameProductList(String product_name) {
    return productDao.getProductNameProductList(product_name);
  }

}
