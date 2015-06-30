package com.rongyitui.po;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.MappedSuperclass;

import com.fasterxml.jackson.annotation.JsonFormat;

@MappedSuperclass
public abstract class Task {
	private String taskimg;// 任务图片 1.用户发布为用户头像 2.官方为自己上传的图片
	private String title;// 任务标题
	private String type;// 任务类型 0.填写问卷 1.体验任务 2.看广告 3.网络推广
	private BigDecimal allmoney;// 任务总悬赏金额
	private int number;// 任务数量

	private BigDecimal singmoney;// 任务单个金额
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date starttime;// 任务开始时间
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date endtime;// 任务结束时间
	private int period; // 任务周期（天）
	private String iphone;// 任务联系人手机号
	private String description;// 任务描述
	private String special;// 特殊要求
	private int specialnumber;// 特殊要求计数完成次数
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date time;// 任务提交时间
	private int tasktype;// 任务类型 0.用户发布 1.官方发布

	private String completenumber;// 任务已完成数量
	private int examine;// 任务审核状态 0.正常 1.通过 2.未通过
	private String approvaltime;// 任务审核时间 //***
	private int receiveCount; // 领取次数

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date createDate; // 创建时间

	public String getTaskimg() {
		return taskimg;
	}

	public void setTaskimg(String taskimg) {
		this.taskimg = taskimg;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public BigDecimal getAllmoney() {
		return allmoney;
	}

	public void setAllmoney(BigDecimal allmoney) {
		this.allmoney = allmoney;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public BigDecimal getSingmoney() {
		return singmoney;
	}

	public void setSingmoney(BigDecimal singmoney) {
		this.singmoney = singmoney;
	}

	public Date getStarttime() {
		return starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public int getPeriod() {
		return period;
	}

	public void setPeriod(int period) {
		this.period = period;
	}

	public String getIphone() {
		return iphone;
	}

	public void setIphone(String iphone) {
		this.iphone = iphone;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSpecial() {
		return special;
	}

	public void setSpecial(String special) {
		this.special = special;
	}

	public int getSpecialnumber() {
		return specialnumber;
	}

	public void setSpecialnumber(int specialnumber) {
		this.specialnumber = specialnumber;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public int getTasktype() {
		return tasktype;
	}

	public void setTasktype(int tasktype) {
		this.tasktype = tasktype;
	}

	public String getCompletenumber() {
		return completenumber;
	}

	public void setCompletenumber(String completenumber) {
		this.completenumber = completenumber;
	}

	public int getExamine() {
		return examine;
	}

	public void setExamine(int examine) {
		this.examine = examine;
	}

	public String getApprovaltime() {
		return approvaltime;
	}

	public void setApprovaltime(String approvaltime) {
		this.approvaltime = approvaltime;
	}

	public int getReceiveCount() {
		return receiveCount;
	}

	public void setReceiveCount(int receiveCount) {
		this.receiveCount = receiveCount;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}
