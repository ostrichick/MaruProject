package ezen.maru.pjt.vo;

public class CartVo {
	private int cart_idx;
	private int member_idx;
	private int product_idx;
	private int cart_product_number;

	@Override
	public String toString() {
		return "CartVo [member_idx=" + member_idx + ", product_idx=" + product_idx + ", cart_product_number="
				+ cart_product_number + "]";
	}

	public int getCart_idx() {
		return cart_idx;
	}

	public void setCart_idx(int cart_idx) {
		this.cart_idx = cart_idx;
	}

	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}

	public int getProduct_idx() {
		return product_idx;
	}

	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}

	public int getCart_product_number() {
		return cart_product_number;
	}

	public void setCart_product_number(int cart_product_number) {
		this.cart_product_number = cart_product_number;
	}
}
