package com.koreait.pro.dto;

import java.sql.Date;

public class BuyDTO {
	
	private int b_No, m_No, p_No, b_Price, b_State;
	private Date b_Expiredate;
	
	public BuyDTO() {}

	public BuyDTO(int b_No, int m_No, int p_No, int b_Price, int b_State, Date b_Expiredate) {
		super();
		this.b_No = b_No;
		this.m_No = m_No;
		this.p_No = p_No;
		this.b_Price = b_Price;
		this.b_State = b_State;
		this.b_Expiredate = b_Expiredate;
	}

	public int getB_No() {
		return b_No;
	}

	public void setB_No(int b_No) {
		this.b_No = b_No;
	}

	public int getM_No() {
		return m_No;
	}

	public void setM_No(int m_No) {
		this.m_No = m_No;
	}

	public int getP_No() {
		return p_No;
	}

	public void setP_No(int p_No) {
		this.p_No = p_No;
	}

	public int getB_Price() {
		return b_Price;
	}

	public void setB_Price(int b_Price) {
		this.b_Price = b_Price;
	}

	public int getB_State() {
		return b_State;
	}

	public void setB_State(int b_State) {
		this.b_State = b_State;
	}

	public Date getB_Expiredate() {
		return b_Expiredate;
	}

	public void setB_Expiredate(Date b_Expiredate) {
		this.b_Expiredate = b_Expiredate;
	}
	
}
