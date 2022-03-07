package com.crud.domain;

import lombok.Data;
import lombok.ToString;

import java.util.Date;


@ToString
@Data
public class BoardVO {
	
	private Integer bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private int viewcnt;
}