package mybatis;

public class Goods {
	private int gbsNum;
	private String gbsName;
	private int gbsPrice;
	private String gbsDes;
	private String picture;
	public int getGbsNum() {
		return gbsNum;
	}
	public void setGbsNum(int gbsNum) {
		this.gbsNum = gbsNum;
	}
	public String getGbsName() {
		return gbsName;
	}
	public void setGbsName(String gbsName) {
		this.gbsName = gbsName;
	}
	public int getGbsPrice() {
		return gbsPrice;
	}
	public void setGbsPrice(int gbsPrice) {
		this.gbsPrice = gbsPrice;
	}
	public String getGbsDes() {
		return gbsDes;
	}
	public void setGbsDes(String gbsDes) {
		this.gbsDes = gbsDes;
	}
	@Override
	public String toString() {
		return "Goods [gbsNum=" + gbsNum + ", gbsName=" + gbsName + ", gbsPrice=" + gbsPrice + ", gbsDes=" + gbsDes
				+ ", picture=" + picture + "]";
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
}