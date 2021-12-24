package spms.vo;

import java.util.Date;

public class Comment {
	private String id;
	private int store_num;
	private String contents;
	private Date regDate;
	private String taste_salty;
	private String taste_sweety;
	private String taste_spicy;
	private int comment_num;
	
	public String getId() {
		return id;
	}
	public Comment setId(String id) {
		this.id = id;
		return this;
	}
	public int getStore_num() {
		return store_num;
	}
	public Comment setStore_num(int store_num) {
		this.store_num = store_num;
		return this;
	}
	public String getContents() {
		return contents;
	}
	public Comment setContents(String contents) {
		this.contents = contents;
		return this;
	}
	public Date getRegDate() {
		return regDate;
	}
	public Comment setRegDate(Date regDate) {
		this.regDate = regDate;
		return this;
	}
	public String getTaste_salty() {
		return taste_salty;
	}
	public Comment setTaste_salty(String taste_salty) {
		this.taste_salty = taste_salty;
		return this;
	}
	public String getTaste_sweety() {
		return taste_sweety;
	}
	public Comment setTaste_sweety(String taste_sweety) {
		this.taste_sweety = taste_sweety;
		return this;
	}
	public String getTaste_spicy() {
		return taste_spicy;
	}
	public Comment setTaste_spicy(String taste_spicy) {
		this.taste_spicy = taste_spicy;
		return this;
	}
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	
	
	
	}

