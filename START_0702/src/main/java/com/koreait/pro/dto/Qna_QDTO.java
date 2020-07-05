package com.koreait.pro.dto;

import java.sql.Date;

public class Qna_QDTO {
	
	private int q_No, m_No, q_State;
	private String q_Category, q_Title, q_Content;
	private Date q_Date;
	
	public Qna_QDTO() {}

	public Qna_QDTO(int q_No, int m_No, int q_State, String q_Category, String q_Title, String q_Content, Date q_Date) {
		super();
		this.q_No = q_No;
		this.m_No = m_No;
		this.q_State = q_State;
		this.q_Category = q_Category;
		this.q_Title = q_Title;
		this.q_Content = q_Content;
		this.q_Date = q_Date;
	}

	public int getQ_No() {
		return q_No;
	}

	public void setQ_No(int q_No) {
		this.q_No = q_No;
	}

	public int getM_No() {
		return m_No;
	}

	public void setM_No(int m_No) {
		this.m_No = m_No;
	}

	public int getQ_State() {
		return q_State;
	}

	public void setQ_State(int q_State) {
		this.q_State = q_State;
	}

	public String getQ_Category() {
		return q_Category;
	}

	public void setQ_Category(String q_Category) {
		this.q_Category = q_Category;
	}

	public String getQ_Title() {
		return q_Title;
	}

	public void setQ_Title(String q_Title) {
		this.q_Title = q_Title;
	}

	public String getQ_Content() {
		return q_Content;
	}

	public void setQ_Content(String q_Content) {
		this.q_Content = q_Content;
	}

	public Date getQ_Date() {
		return q_Date;
	}

	public void setQ_Date(Date q_Date) {
		this.q_Date = q_Date;
	}

	
}
