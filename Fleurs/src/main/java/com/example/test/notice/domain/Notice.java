package com.example.test.notice.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Notice {

	private int ROWNUM;
	private int noticeNo;
	private String title;
	private String content;
	private int views;
	private Date writeDate;

}
