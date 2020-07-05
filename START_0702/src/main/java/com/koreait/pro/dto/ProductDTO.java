package com.koreait.pro.dto;

public class ProductDTO {
	
	private int p_No;
	private String p_Name, p_Cartegory, p_Img_Path, p_Brand;
	
	public ProductDTO() {}

	public ProductDTO(int p_No, String p_Name, String p_Cartegory, String p_Img_Path, String p_Brand) {
		super();
		this.p_No = p_No;
		this.p_Name = p_Name;
		this.p_Cartegory = p_Cartegory;
		this.p_Img_Path = p_Img_Path;
		this.p_Brand = p_Brand;
	}

	public int getP_No() {
		return p_No;
	}

	public void setP_No(int p_No) {
		this.p_No = p_No;
	}

	public String getP_Name() {
		return p_Name;
	}

	public void setP_Name(String p_Name) {
		this.p_Name = p_Name;
	}

	public String getP_Cartegory() {
		return p_Cartegory;
	}

	public void setP_Cartegory(String p_Cartegory) {
		this.p_Cartegory = p_Cartegory;
	}

	public String getP_Img_Path() {
		return p_Img_Path;
	}

	public void setP_Img_Path(String p_Img_Path) {
		this.p_Img_Path = p_Img_Path;
	}

	public String getP_Brand() {
		return p_Brand;
	}

	public void setP_Brand(String p_Brand) {
		this.p_Brand = p_Brand;
	}

}
