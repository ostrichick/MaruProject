package ezen.maru.pjt.vo;

import java.util.Date;

public class ReviewVo {
	private int idx;
	private int product_idx;
	private int member_idx;
	private String content;
	private int star;
	private Date wdate;
	private String file_original;
	private String file_system;
	private String file_extension;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getProduct_idx() {
		return product_idx;
	}
	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	public String getFile_original() {
		return file_original;
	}
	public void setFile_original(String file_original) {
		this.file_original = file_original;
	}
	public String getFile_system() {
		return file_system;
	}
	public void setFile_system(String file_system) {
		this.file_system = file_system;
	}
	public String getFile_extension() {
		return file_extension;
	}
	public void setFile_extension(String file_extension) {
		this.file_extension = file_extension;
	}
	
	 @Override
	    public String toString() {
	        return "Review [idx=" + idx + ", product_idx=" + product_idx + 
	        		", member_idx=" + member_idx + ", content=" + content +", star=" + star + 
	        		", wdate=" + wdate + ", file_original=" + file_original + ", file_system=" + file_system + 
	        		", file_extension=" + file_extension +"]";
	    }
	
	
}
