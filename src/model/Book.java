package model;

import java.io.InputStream;
import java.io.Serializable;
import java.sql.Blob;

public class Book implements Serializable{
	private int id;
	private String bookname;
	private String author;
	private String press;
	private String pubdate;
	private InputStream cover;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPress() {
		return press;
	}
	public void setPress(String press) {
		this.press = press;
	}
	public String getPubdate() {
		return pubdate;
	}
	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}
	public InputStream getCover() {
		return cover;
	}
	public void setCover(InputStream inputStream) {
		this.cover = inputStream;
	}
}
