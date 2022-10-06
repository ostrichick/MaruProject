package ezen.maru.pjt.vo;

import java.util.Date;

import lombok.Data;

@Data
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
}
