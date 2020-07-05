package com.koreait.pro.dto;

import java.sql.Date;

public class SellDTO {
	
	private int s_No, m_No, p_No, s_Price, s_Immediateprice, s_State;
	private Date s_Expiredate;
	
	public SellDTO() {}

	public SellDTO(int s_No, int m_No, int p_No, int s_Price, int s_Immediateprice, int s_State, Date s_Expiredate) {
		super();
		this.s_No = s_No;
		this.m_No = m_No;
		this.p_No = p_No;
		this.s_Price = s_Price;
		this.s_Immediateprice = s_Immediateprice;
		this.s_State = s_State;
		this.s_Expiredate = s_Expiredate;
	}

	public int getS_No() {
		return s_No;
	}

	public void setS_No(int s_No) {
		this.s_No = s_No;
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

	public int getS_Price() {
		return s_Price;
	}

	public void setS_Price(int s_Price) {
		this.s_Price = s_Price;
	}

	public int getS_Immediateprice() {
		return s_Immediateprice;
	}

	public void setS_Immediateprice(int s_Immediateprice) {
		this.s_Immediateprice = s_Immediateprice;
	}

	public int getS_State() {
		return s_State;
	}

	public void setS_State(int s_State) {
		this.s_State = s_State;
	}

	public Date getS_Expiredate() {
		return s_Expiredate;
	}

	public void setS_Expiredate(Date s_Expiredate) {
		this.s_Expiredate = s_Expiredate;
	}

}
