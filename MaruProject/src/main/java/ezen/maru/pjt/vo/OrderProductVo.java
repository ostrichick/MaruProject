package ezen.maru.pjt.vo;

public class OrderProductVo extends CartVo {
	private int order_idx;
	private int product_idx;
	private int order_quantity;

	@Override
	public String toString() {
		return "OrderProductVo [order_idx=" + order_idx + ", product_idx=" + product_idx + ", order_quantity="
				+ order_quantity + "]\n\n";
	}

	public int getOrder_idx() {
		return order_idx;
	}

	public void setOrder_idx(int order_idx) {
		this.order_idx = order_idx;
	}

	public int getProduct_idx() {
		return product_idx;
	}

	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}

	public int getOrder_quantity() {
		return order_quantity;
	}

	public void setOrder_quantity(int order_quantity) {
		this.order_quantity = order_quantity;
	}

}
