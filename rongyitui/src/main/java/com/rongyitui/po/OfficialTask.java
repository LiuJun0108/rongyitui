package com.rongyitui.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 官方任务
 * 
 * @author Jun.L
 *
 */
@Entity
@Table(name = "officialTask")
public class OfficialTask extends Task implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8795438409286959762L;

	@Id
	@GeneratedValue
	private int id;// ID
	private boolean recommend; // 推荐

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean isRecommend() {
		return recommend;
	}

	public void setRecommend(boolean recommend) {
		this.recommend = recommend;
	}

}
