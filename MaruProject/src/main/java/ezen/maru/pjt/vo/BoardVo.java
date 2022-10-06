package ezen.maru.pjt.vo;

import java.util.Date;

import lombok.Data;

@Data
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
}
