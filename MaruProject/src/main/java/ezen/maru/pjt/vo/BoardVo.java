package ezen.maru.pjt.vo;

import java.util.Date;

public class BoardVo {
	private int idx;
	private int member_idx;
	private String member_id;
	private String member_name;
	private String title;
	private String content;
	private Date wdate;
	private String category;
	private String isanswered;
	private int parent_idx;
	private String file_original;
	private String file_system;
	private String file_extension;
	private int hit;

	@Override
	public String toString() {
		return "BoardVo [idx=" + idx + ", member_idx=" + member_idx + ", member_id=" + member_id + ", member_name="
				+ member_name + ", title=" + title + ", content=" + content + ", wdate=" + wdate + ", category="
				+ category + ", isanswered=" + isanswered + ", parent_idx=" + parent_idx + ", file_original="
				+ file_original + ", file_system=" + file_system + ", file_extension=" + file_extension + ", hit=" + hit
				+ "]";
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getIsanswered() {
		return isanswered;
	}

	public void setIsanswered(String isanswered) {
		this.isanswered = isanswered;
	}

	public int getParent_idx() {
		return parent_idx;
	}

	public void setParent_idx(int parent_idx) {
		this.parent_idx = parent_idx;
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

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}
}
