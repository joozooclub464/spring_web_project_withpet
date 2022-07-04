package mybatis;

public class PlayPlace {
	private int p_num;
	private String p_name;
	private String p_location;
	private String p_tel;
	private String park;
	private String p_img1;
	private String p_img2;
	private String p_img3;
	private String p_img4;
	private String p_img5;
	private String p_img6;
	private String content;
	private String open_hour;
	private String caution;
	private int playid;
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_location() {
		return p_location;
	}
	public void setP_location(String p_location) {
		this.p_location = p_location;
	}
	public String getP_tel() {
		return p_tel;
	}
	public void setP_tel(String p_tel) {
		this.p_tel = p_tel;
	}
	public String getPark() {
		return park;
	}
	public void setPark(String park) {
		this.park = park;
	}
	public String getP_img1() {
		return p_img1;
	}
	public void setP_img1(String p_img1) {
		this.p_img1 = p_img1;
	}
	public String getP_img2() {
		return p_img2;
	}
	public void setP_img2(String p_img2) {
		this.p_img2 = p_img2;
	}
	public String getP_img3() {
		return p_img3;
	}
	public void setP_img3(String p_img3) {
		this.p_img3 = p_img3;
	}
	public String getP_img4() {
		return p_img4;
	}
	public void setP_img4(String p_img4) {
		this.p_img4 = p_img4;
	}
	public String getP_img5() {
		return p_img5;
	}
	public void setP_img5(String p_img5) {
		this.p_img5 = p_img5;
	}
	public String getP_img6() {
		return p_img6;
	}
	public void setP_img6(String p_img6) {
		this.p_img6 = p_img6;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getOpen_hour() {
		return open_hour;
	}
	public void setOpen_hour(String open_hour) {
		this.open_hour = open_hour;
	}
	public String getCaution() {
		return caution;
	}
	public void setCaution(String caution) {
		this.caution = caution;
	}
	public int getPlayid() {
		return playid;
	}
	public void setPlayid(int playid) {
		this.playid = playid;
	}
	@Override
	public String toString() {
		return "PlayPlace [p_num=" + p_num + ", p_name=" + p_name + ", p_location=" + p_location + ", p_tel=" + p_tel
				+ ", park=" + park + ", p_img1=" + p_img1 + ", p_img2=" + p_img2 + ", p_img3=" + p_img3 + ", p_img4="
				+ p_img4 + ", p_img5=" + p_img5 + ", p_img6=" + p_img6 + ", content=" + content + ", open_hour="
				+ open_hour + ", caution=" + caution + ", playid=" + playid + "]";
	}
}
