package com.rongyitui.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * 用户任务
 * 
 * @author Jun.L
 *
 */
@Entity
@Table(name = "userTask")
@JsonIgnoreProperties(value = { "user" })
public class UserTask extends Task implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 9097059472505946316L;
	@Id
	@GeneratedValue
	private int id;
	@ManyToOne
	@JoinColumn(name = "userid")
	private WebUser user;// 任务是谁发布的指向【FK】

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public WebUser getUser() {
		return user;
	}

	public void setUser(WebUser user) {
		this.user = user;
	}

}
