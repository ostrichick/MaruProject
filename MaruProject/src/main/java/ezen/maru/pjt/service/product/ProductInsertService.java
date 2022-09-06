package ezen.maru.pjt.service.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.maru.pjt.dao.ProductDao;

@Service("p_insert")
public class ProductInsertService implements ProductService {
	private ProductDao productDao;

	@Autowired(required = false)
	public ProductInsertService(ProductDao productDao) {
		this.productDao = productDao;
	}
}
