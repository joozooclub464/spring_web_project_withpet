package mybatis;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Cart {

	private int cartId;
	private String id;
	private int gbsNum;
	private int cartStock;
	private String gbsName;
	private int gbsPrice;
	private String picture;
	
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getGbsNum() {
		return gbsNum;
	}
	public void setGbsNum(int gbsNum) {
		this.gbsNum = gbsNum;
	}
	public int getCartStock() {
		return cartStock;
	}
	public void setCartStock(int cartStock) {
		this.cartStock = cartStock;
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
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", id=" + id + ", gbsNum=" + gbsNum + ", cartStock=" + cartStock
				+ ", gbsName=" + gbsName + ", gbsPrice=" + gbsPrice + ", picture=" + picture + "]";
	}
}