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
	private int id;// ID 【PK】
	private String login;// 登录名（邮箱）
	private String password;// 密码
	private String nicknamen;// 昵称
	private String headimg;// 头像
	private String iphone;// 手机
	private String email;// 邮箱
	private String regip;// 注册IP
	private String regtime;// 注册时间
	private Date logintime;// 上次登录时间
	private String loginip;// 上次登录IP

	private int tid;// 推荐ID

	private int isvip;// 是否是VIP--0:不是;1:是
	private Date vip_starttime;// VIP生效时间
	private Date vip_endtime;// VIP结束时间

	private String alipaynumber;// 支付宝账号
	private String alipayname;// 支付宝姓名
	private String state;// 0.正常 1.冻结

	private BigDecimal money;// 账户可用余额
	private String frozenmoney;// 任务冻结金额
	private BigDecimal allexpmoney;// 总支出金额
	private BigDecimal allincmoney;// 总收入金额
	private BigDecimal allwitmoney;// 总提现金额
	private BigDecimal allrecmoney;// 总充值金额
	private int tnumber;// 推荐人数

	public WebUser() {
		super();
	}

	public WebUser(int id) {
		super();
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNicknamen() {
		return nicknamen;
	}

	public void setNicknamen(String nicknamen) {
		this.nicknamen = nicknamen;
	}

	public String getHeadimg() {
		return headimg;
	}

	public void setHeadimg(String headimg) {
		this.headimg = headimg;
	}

	public String getIphone() {
		return iphone;
	}

	public void setIphone(String iphone) {
		this.iphone = iphone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public BigDecimal getMoney() {
		return money;
	}

	public void setMoney(BigDecimal money) {
		this.money = money;
	}

	public String getFrozenmoney() {
		return frozenmoney;
	}

	public void setFrozenmoney(String frozenmoney) {
		this.frozenmoney = frozenmoney;
	}

	public String getRegip() {
		return regip;
	}

	public void setRegip(String regip) {
		this.regip = regip;
	}

	public String getRegtime() {
		return regtime;
	}

	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}

	public Date getLogintime() {
		return logintime;
	}

	public void setLogintime(Date logintime) {
		this.logintime = logintime;
	}

	public String getLoginip() {
		return loginip;
	}

	public void setLoginip(String loginip) {
		this.loginip = loginip;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getAlipaynumber() {
		return alipaynumber;
	}

	public void setAlipaynumber(String alipaynumber) {
		this.alipaynumber = alipaynumber;
	}

	public String getAlipayname() {
		return alipayname;
	}

	public void setAlipayname(String alipayname) {
		this.alipayname = alipayname;
	}

	public int getIsvip() {
		return isvip;
	}

	public void setIsvip(int isvip) {
		this.isvip = isvip;
	}

	public Date getVip_starttime() {
		return vip_starttime;
	}

	public void setVip_starttime(Date vip_starttime) {
		this.vip_starttime = vip_starttime;
	}

	public Date getVip_endtime() {
		return vip_endtime;
	}

	public void setVip_endtime(Date vip_endtime) {
		this.vip_endtime = vip_endtime;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public BigDecimal getAllexpmoney() {
		return allexpmoney;
	}

	public void setAllexpmoney(BigDecimal allexpmoney) {
		this.allexpmoney = allexpmoney;
	}

	public BigDecimal getAllincmoney() {
		return allincmoney;
	}

	public void setAllincmoney(BigDecimal allincmoney) {
		this.allincmoney = allincmoney;
	}

	public BigDecimal getAllwitmoney() {
		return allwitmoney;
	}

	public void setAllwitmoney(BigDecimal allwitmoney) {
		this.allwitmoney = allwitmoney;
	}

	public BigDecimal getAllrecmoney() {
		return allrecmoney;
	}

	public void setAllrecmoney(BigDecimal allrecmoney) {
		this.allrecmoney = allrecmoney;
	}

	public int getTnumber() {
		return tnumber;
	}

	public void setTnumber(int tnumber) {
		this.tnumber = tnumber;
	}

}
