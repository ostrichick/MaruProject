package ezen.maru.pjt.vo;

public class ProductVo extends FileVo {
	private String product_name;
	private int product_idx;
	private int product_price;
	private String product_sale; // 할인여부 Y N
	private long product_sale_percent;
	private String product_size; // 사이즈 500x1000
	private int product_inventory;
	private String product_major_category;
	private String product_isnew;
	private String product_detail;
	private long product_avgstar;
	private int product_hit;

	@Override
	public String toString() {
		return "ProductVo [product_name=" + product_name + ", product_idx=" + product_idx + ", product_price="
				+ product_price + ", product_sale=" + product_sale + ", product_sale_percent=" + product_sale_percent
				+ ", product_size=" + product_size + ", product_inventory=" + product_inventory
				+ ", product_major_category=" + product_major_category + ", product_isnew=" + product_isnew
				+ ", product_detail=" + product_detail + ", product_avgstar=" + product_avgstar + ", product_hit="
				+ product_hit + ", getProduct_name()=" + getProduct_name() + ", getProduct_hit()=" + getProduct_hit()
				+ ", getProduct_idx()=" + getProduct_idx() + ", getProduct_price()=" + getProduct_price()
				+ ", getProduct_sale()=" + getProduct_sale() + ", getProduct_sale_percent()="
				+ getProduct_sale_percent() + ", getProduct_size()=" + getProduct_size() + ", getProduct_inventory()="
				+ getProduct_inventory() + ", getProduct_major_category()=" + getProduct_major_category()
				+ ", getProduct_detail()=" + getProduct_detail() + ", getProduct_isnew()=" + getProduct_isnew()
				+ ", getProduct_avgstar()=" + getProduct_avgstar() + ", getFile_idx()=" + getFile_idx()
				+ ", getFile_original()=" + getFile_original() + ", getFile_system()=" + getFile_system()
				+ ", getFile_extension()=" + getFile_extension() + ", getHit()=" + getHit() + ", getIdx()=" + getIdx()
				+ ", getWdate()=" + getWdate() + ", getIsanswered()=" + getIsanswered() + ", getParent_idx()="
				+ getParent_idx() + ", getBoard_idx()=" + getBoard_idx() + ", getWriter()=" + getWriter()
				+ ", getTitle()=" + getTitle() + ", getContent()=" + getContent() + ", getPrice()=" + getPrice()
				+ ", getAddress()=" + getAddress() + ", getReg_date()=" + getReg_date() + ", getOrigin_filename1()="
				+ getOrigin_filename1() + ", getOrigin_filename2()=" + getOrigin_filename2()
				+ ", getOrigin_filename3()=" + getOrigin_filename3() + ", getSystem_filename1()="
				+ getSystem_filename1() + ", getSystem_filename2()=" + getSystem_filename2()
				+ ", getSystem_filename3()=" + getSystem_filename3() + ", getMember_idx()=" + getMember_idx()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getProduct_hit() {
		return product_hit;
	}

	public void setProduct_hit(int product_hit) {
		this.product_hit = product_hit;
	}

	public int getProduct_idx() {
		return product_idx;
	}

	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public String getProduct_sale() {
		return product_sale;
	}

	public void setProduct_sale(String product_sale) {
		this.product_sale = product_sale;
	}

	public long getProduct_sale_percent() {
		return product_sale_percent;
	}

	public void setProduct_sale_percent(long product_sale_percent) {
		this.product_sale_percent = product_sale_percent;
	}

	public String getProduct_size() {
		return product_size;
	}

	public void setProduct_size(String product_size) {
		this.product_size = product_size;
	}

	public int getProduct_inventory() {
		return product_inventory;
	}

	public void setProduct_inventory(int product_inventory) {
		this.product_inventory = product_inventory;
	}

	public String getProduct_major_category() {
		return product_major_category;
	}

	public void setProduct_major_category(String product_major_category) {
		this.product_major_category = product_major_category;
	}

	public String getProduct_detail() {
		return product_detail;
	}

	public void setProduct_detail(String product_detail) {
		this.product_detail = product_detail;
	}

	public String getProduct_isnew() {
		return product_isnew;
	}

	public void setProduct_isnew(String product_isnew) {
		this.product_isnew = product_isnew;
	}

	public long getProduct_avgstar() {
		return product_avgstar;
	}

	public void setProduct_avgstar(long product_avgstar) {
		this.product_avgstar = product_avgstar;
	}

}
