package com.entity;

import java.util.Date;

import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.*;




@Entity
public class Note {
	@Id
  private int id;
  private String title;
  
  @Column(length=1500)
  private String content;
  private Date adddate;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public Date getAdddate() {
	return adddate;
}
public void setAdddate(Date adddate) {
	this.adddate = adddate;
}
public Note( String title, String content, Date adddate) {
	super();
	this.id = new Random().nextInt(100000);
	this.title = title;
	this.content = content;
	this.adddate = adddate;
}
public Note() {
	super();
	
}
  
  
  
	
	
	
}
