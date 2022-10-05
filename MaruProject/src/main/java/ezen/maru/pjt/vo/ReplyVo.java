package ezen.maru.pjt.vo;

import java.util.Date;

public class ReplyVo {
	private int idx;
	private int reply_idx;
	private int member_idx;
	private String reply_content;
	private Date reply_date;

	@Override
	public String toString() {
		return "ReplyVo [idx=" + idx + ", reply_idx=" + reply_idx + ", member_idx=" + member_idx + ", reply_content="
				+ reply_content + ", reply_date=" + reply_date + ", getIdx()=" + getIdx() + ", getReply_idx()="
				+ getReply_idx() + ", getMember_idx()=" + getMember_idx() + ", getReply_content()=" + getReply_content()
				+ ", getReply_date()=" + getReply_date() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getReply_idx() {
		return reply_idx;
	}

	public void setReply_idx(int reply_idx) {
		this.reply_idx = reply_idx;
	}

	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public Date getReply_date() {
		return reply_date;
	}

	public void setReply_date(Date reply_date) {
		this.reply_date = reply_date;
	}

}
