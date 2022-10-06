package ezen.maru.pjt.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReplyVo {
	private int idx;
	private int reply_idx;
	private int member_idx;
	private int member_id;
	private String reply_content;
	private Date reply_date;
}
