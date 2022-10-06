package ezen.maru.pjt.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class ProductVo extends FileVo {
	private String product_name;
	private int product_idx;
	private int product_price;
	private String product_sale; // 할인여부 Y N
	private long product_sale_percent;
	private int product_sale_price; // 할인 적용된 가격
	private String product_size; // 사이즈 500x1000
	private int product_inventory;
	private String product_major_category;
	private String product_isnew;
	private String product_detail;
	private long product_avgstar;
	private int product_hit;
}
