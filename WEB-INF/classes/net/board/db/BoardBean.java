package net.board.db;

import java.sql.Date;

public class BoardBean {
	private int B_NUM;
	private String B_NAME;
	private String B_PASS;
	private String B_SUBJECT;
	private String B_CONTENT;
	private String B_FILE;
	private int B_RE_REF;
	private int B_RE_LEV;
	private int B_RE_SEQ;
	private int B_READCOUNT;
	private Date B_DATE;
	private String CATEGORY;
	
	public int getB_NUM() {
		return B_NUM;
	}
	public void setB_NUM(int B_num) {
		B_NUM = B_num;
	}
	public String getB_NAME() {
		return B_NAME;
	}
	public void setB_NAME(String B_name) {
		B_NAME = B_name;
	}
	public String getB_PASS() {
		return B_PASS;
	}
	public void setB_PASS(String B_pass) {
		B_PASS = B_pass;
	}
	public String getB_SUBJECT() {
		return B_SUBJECT;
	}
	public void setB_SUBJECT(String B_subject) {
		B_SUBJECT = B_subject;
	}
	public String getB_CONTENT() {
		return B_CONTENT;
	}
	public void setB_CONTENT(String B_content) {
		B_CONTENT = B_content;
	}
	public String getB_FILE() {
		return B_FILE;
	}
	public void setB_FILE(String B_file) {
		B_FILE = B_file;
	}
	public int getB_RE_REF() {
		return B_RE_REF;
	}
	public void setB_RE_REF(int B_re_ref) {
		B_RE_REF = B_re_ref;
	}
	public int getB_RE_LEV() {
		return B_RE_LEV;
	}
	public void setB_RE_LEV(int B_re_lev) {
		B_RE_LEV = B_re_lev;
	}
	public int getB_RE_SEQ() {
		return B_RE_SEQ;
	}
	public void setB_RE_SEQ(int B_re_seq) {
		B_RE_SEQ = B_re_seq;
	}
	public int getB_READCOUNT() {
		return B_READCOUNT;
	}
	public void setB_READCOUNT(int B_readcount) {
		B_READCOUNT = B_readcount;
	}
	public Date getB_DATE() {
		return B_DATE;
	}
	public void setB_DATE(Date B_date) {
		B_DATE = B_date;
	}
	public String getCATEGORY() {
		return CATEGORY;
	}
	public void setCATEGORY(String category) {
		CATEGORY = category;
	}
}