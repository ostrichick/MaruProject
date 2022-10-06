package ezen.maru.pjt.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class OrderProductVo extends CartVo {
	private int order_idx;
	private int product_idx;
	private int order_quantity;
}
