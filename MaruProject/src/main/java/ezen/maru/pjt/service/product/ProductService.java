package ezen.maru.pjt.service.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartRequest;

import ezen.maru.pjt.vo.ProductVo;

public interface ProductService {

	default List<ProductVo> getProductList() {
		return null;
	}

	default int productAdd(ProductVo productVo, MultipartRequest uploadFile1, MultipartRequest uploadFile2,
			HttpServletRequest req) {
		return 0;
	}

}
