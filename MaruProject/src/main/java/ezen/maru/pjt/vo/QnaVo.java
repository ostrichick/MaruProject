package ezen.maru.pjt.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class QnaVo {
	private int idx;
	private int product_idx;
	private int member_idx;
	private String member_id;
	private String content;
	private int star;
	private Date wdate;
	private String isAnswered;
	private int parent_idx;
}
