package ezen.maru.pjt.vo;

import java.util.Date;

public class OrderVo {
	private int order_idx;
	private int member_idx;
	private Date order_date;
	private int order_total_price;
	private String order_name;
	private String order_address;
	private String order_address2;
	private int order_postcode;
	private String order_phone;
	private String order_status;
	private String order_cancel_yn;
	private String order_refund_yn;

	public int getOrder_idx() {
		return order_idx;
	}

	public void setOrder_idx(int order_idx) {
		this.order_idx = order_idx;
	}

	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public int getOrder_total_price() {
		return order_total_price;
	}

	public void setOrder_total_price(int order_total_price) {
		this.order_total_price = order_total_price;
	}

	public String getOrder_name() {
		return order_name;
	}

	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}

	public String getOrder_address() {
		return order_address;
	}

	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}

	public String getOrder_address2() {
		return order_address2;
	}

	public void setOrder_address2(String order_address2) {
		this.order_address2 = order_address2;
	}

	public int getOrder_postcode() {
		return order_postcode;
	}

	public void setOrder_postcode(int order_postcode) {
		this.order_postcode = order_postcode;
	}

	public String getOrder_phone() {
		return order_phone;
	}

	public void setOrder_phone(String order_phone) {
		this.order_phone = order_phone;
	}

	public String getOrder_status() {
		return order_status;
	}

	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}

	public String getOrder_cancel_yn() {
		return order_cancel_yn;
	}

	public void setOrder_cancel_yn(String order_cancel_yn) {
		this.order_cancel_yn = order_cancel_yn;
	}

	public String getOrder_refund_yn() {
		return order_refund_yn;
	}

	public void setOrder_refund_yn(String order_refund_yn) {
		this.order_refund_yn = order_refund_yn;
	}

}
