package ezen.maru.pjt.vo;

public class FileVo extends BoardVo {

	private int product_idx;
	private int file_idx;
	private String file_original;
	private String file_system;
	private String file_extension;

	public int getProduct_idx() {
		return product_idx;
	}

	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}

	public int getFile_idx() {
		return file_idx;
	}

	public void setFile_idx(int file_idx) {
		this.file_idx = file_idx;
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
}
