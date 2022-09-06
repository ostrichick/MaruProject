package ezen.maru.pjt.service.product;

import java.util.List;

import ezen.maru.pjt.vo.ProductVo;

public interface ProductService {

	default List<ProductVo> getProductList() {
		return null;
	}

}
