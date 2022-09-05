package ezen.maru.pjt.service.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.maru.pjt.dao.ProductDao;

@Service("p_add")
public class ProductAddService implements ProductService {
	private ProductDao productDao;

	@Autowired(required = false)
	public ProductAddService(ProductDao productDao) {
		this.productDao = productDao;
	}
}
