package ezen.maru.pjt.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVo {
	private int idx;
	private int reply_idx;
	private int member_idx;
	private String reply_content;
	private Date reply_date;
}
