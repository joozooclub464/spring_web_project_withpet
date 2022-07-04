package mybatis;

import java.sql.Date;

public class ReserveHotel {
	private int rh_num;
	private int h_num;
	private String h_name;
	private String h_tel;
	private String room_kind;
	private String id;
	private String name;
	private String tel;
	private int num;
	private Date s_date;
	private Date e_date;
	private String pet_kind;
	private int pet_num;
	private String content;

	public int getRh_num() {
		return rh_num;
	}

	public void setRh_num(int rh_num) {
		this.rh_num = rh_num;
	}

	public int getH_num() {
		return h_num;
	}

	public void setH_num(int h_num) {
		this.h_num = h_num;
	}

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	public String getH_tel() {
		return h_tel;
	}

	public void setH_tel(String h_tel) {
		this.h_tel = h_tel;
	}

	public String getRoom_kind() {
		return room_kind;
	}

	public void setRoom_kind(String room_kind) {
		this.room_kind = room_kind;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public Date getS_date() {
		return s_date;
	}

	public void setS_date(Date s_date) {
		this.s_date = s_date;
	}

	public Date getE_date() {
		return e_date;
	}

	public void setE_date(Date e_date) {
		this.e_date = e_date;
	}

	public String getPet_kind() {
		return pet_kind;
	}

	public void setPet_kind(String pet_kind) {
		this.pet_kind = pet_kind;
	}

	public int getPet_num() {
		return pet_num;
	}

	public void setPet_num(int pet_num) {
		this.pet_num = pet_num;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "ReserveHotel [rh_num=" + rh_num + ", h_num=" + h_num + ", h_name=" + h_name + ", h_tel=" + h_tel
				+ ", room_kind=" + room_kind + ", id=" + id + ", name=" + name + ", tel=" + tel + ", num=" + num
				+ ", s_date=" + s_date + ", e_date=" + e_date + ", pet_kind=" + pet_kind + ", pet_num=" + pet_num
				+ ", content=" + content + "]";
	}

}
