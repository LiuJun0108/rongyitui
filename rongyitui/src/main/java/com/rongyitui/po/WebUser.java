package com.rongyitui.po;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 网站用户实体类
 * 
 * @author LiuJun
 * 
 */
@Entity
@Table(name = "webuser")
public class WebUser implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -6708805569264533795L;

	@Id
	@GeneratedValue
	private int us_id;// ID 【PK】
	private String us_login;// 登录名（邮箱）
	private String us_password;// 密码
	private String us_nicknamen;// 昵称
	private String us_headimg;// 头像
	private String us_iphone;// 手机
	private String us_email;// 邮箱
	private BigDecimal us_money;// 账户可用余额
	private String us_frozenmoney;// 任务冻结金额
	private String us_regip;// 注册IP
	private String us_regtime;// 注册时间
	private Date us_logintime;// 上次登录时间
	private String us_loginip;// 上次登录IP
	private int us_tid;// 推荐ID
	private String us_alipaynumber;// 支付宝账号
	private String us_alipayname;// 支付宝姓名
	private int us_isvip;// 是否是VIP--0:不是;1:是
	private Date us_vip_starttime;// VIP生效时间
	private Date us_vip_endtime;// VIP结束时间
	private String us_state;// 0.正常 1.冻结
	private BigDecimal us_allexpmoney;// 总支出金额
	private BigDecimal us_allincmoney;// 总收入金额
	private BigDecimal us_allwitmoney;// 总提现金额
	private BigDecimal us_allrecmoney;// 总充值金额
	private int us_tnumber;// 推荐人数

	public WebUser() {
		super();
	}

	public WebUser(int us_id) {
		super();
		this.us_id = us_id;
	}

	public int getUs_id() {
		return us_id;
	}

	public void setUs_id(int us_id) {
		this.us_id = us_id;
	}

	public String getUs_login() {
		return us_login;
	}

	public void setUs_login(String us_login) {
		this.us_login = us_login;
	}

	public String getUs_password() {
		return us_password;
	}

	public void setUs_password(String us_password) {
		this.us_password = us_password;
	}

	public String getUs_nicknamen() {
		return us_nicknamen;
	}

	public void setUs_nicknamen(String us_nicknamen) {
		this.us_nicknamen = us_nicknamen;
	}

	public String getUs_headimg() {
		return us_headimg;
	}

	public void setUs_headimg(String us_headimg) {
		this.us_headimg = us_headimg;
	}

	public String getUs_iphone() {
		return us_iphone;
	}

	public void setUs_iphone(String us_iphone) {
		this.us_iphone = us_iphone;
	}

	public String getUs_email() {
		return us_email;
	}

	public void setUs_email(String us_email) {
		this.us_email = us_email;
	}

	public BigDecimal getUs_money() {
		return us_money;
	}

	public void setUs_money(BigDecimal us_money) {
		this.us_money = us_money;
	}

	public String getUs_frozenmoney() {
		return us_frozenmoney;
	}

	public void setUs_frozenmoney(String us_frozenmoney) {
		this.us_frozenmoney = us_frozenmoney;
	}

	public String getUs_regip() {
		return us_regip;
	}

	public void setUs_regip(String us_regip) {
		this.us_regip = us_regip;
	}

	public String getUs_regtime() {
		return us_regtime;
	}

	public void setUs_regtime(String us_regtime) {
		this.us_regtime = us_regtime;
	}

	public Date getUs_logintime() {
		return us_logintime;
	}

	public void setUs_logintime(Date us_logintime) {
		this.us_logintime = us_logintime;
	}

	public String getUs_loginip() {
		return us_loginip;
	}

	public void setUs_loginip(String us_loginip) {
		this.us_loginip = us_loginip;
	}

	public int getUs_tid() {
		return us_tid;
	}

	public void setUs_tid(int us_tid) {
		this.us_tid = us_tid;
	}

	public String getUs_alipaynumber() {
		return us_alipaynumber;
	}

	public void setUs_alipaynumber(String us_alipaynumber) {
		this.us_alipaynumber = us_alipaynumber;
	}

	public String getUs_alipayname() {
		return us_alipayname;
	}

	public void setUs_alipayname(String us_alipayname) {
		this.us_alipayname = us_alipayname;
	}

	public int getUs_isvip() {
		return us_isvip;
	}

	public void setUs_isvip(int us_isvip) {
		this.us_isvip = us_isvip;
	}

	public Date getUs_vip_starttime() {
		return us_vip_starttime;
	}

	public void setUs_vip_starttime(Date us_vip_starttime) {
		this.us_vip_starttime = us_vip_starttime;
	}

	public Date getUs_vip_endtime() {
		return us_vip_endtime;
	}

	public void setUs_vip_endtime(Date us_vip_endtime) {
		this.us_vip_endtime = us_vip_endtime;
	}

	public String getUs_state() {
		return us_state;
	}

	public void setUs_state(String us_state) {
		this.us_state = us_state;
	}

	public BigDecimal getUs_allexpmoney() {
		return us_allexpmoney;
	}

	public void setUs_allexpmoney(BigDecimal us_allexpmoney) {
		this.us_allexpmoney = us_allexpmoney;
	}

	public BigDecimal getUs_allincmoney() {
		return us_allincmoney;
	}

	public void setUs_allincmoney(BigDecimal us_allincmoney) {
		this.us_allincmoney = us_allincmoney;
	}

	public BigDecimal getUs_allwitmoney() {
		return us_allwitmoney;
	}

	public void setUs_allwitmoney(BigDecimal us_allwitmoney) {
		this.us_allwitmoney = us_allwitmoney;
	}

	public BigDecimal getUs_allrecmoney() {
		return us_allrecmoney;
	}

	public void setUs_allrecmoney(BigDecimal us_allrecmoney) {
		this.us_allrecmoney = us_allrecmoney;
	}

	public int getUs_tnumber() {
		return us_tnumber;
	}

	public void setUs_tnumber(int us_tnumber) {
		this.us_tnumber = us_tnumber;
	}

}
