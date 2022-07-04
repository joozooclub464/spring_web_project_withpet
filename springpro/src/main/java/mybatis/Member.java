package mybatis;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class Member {
	@NotEmpty(message = "아이디를 입력해주세요")
	private String id;
	@NotEmpty(message = "비밀번호를 입력해주세요")
	private String pass;
	@NotEmpty(message = "이름을 입력해주세요")
	private String name;
	private String join_date;
	private String birthday;
	private String tel;
	@Email
	private String email;
	private String address;
	private String picture;
	private int agree;
	private String memlevel;
	private String pet_kind;
	private String pet_name;
	private String pet_age;
	private int gender;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getAgree() {
		return agree;
	}
	public void setAgree(int agree) {
		this.agree = agree;
	}
	public String getMemlevel() {
		return memlevel;
	}
	public void setMemlevel(String memlevel) {
		this.memlevel = memlevel;
	}
	public String getPet_kind() {
		return pet_kind;
	}
	public void setPet_kind(String pet_kind) {
		this.pet_kind = pet_kind;
	}
	public String getPet_name() {
		return pet_name;
	}
	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}
	public String getPet_age() {
		return pet_age;
	}
	public void setPet_age(String pet_age) {
		this.pet_age = pet_age;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", pass=" + pass + ", name=" + name + ", join_date=" + join_date + ", birthday="
				+ birthday + ", tel=" + tel + ", email=" + email + ", address=" + address + ", picture=" + picture
				+ ", agree=" + agree + ", memlevel=" + memlevel + ", pet_kind=" + pet_kind + ", pet_name=" + pet_name
				+ ", pet_age=" + pet_age + ", gender=" + gender + "]";
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
}