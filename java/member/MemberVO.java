package member;

import java.time.LocalDate;

public class MemberVO {
	private String id;
	private String password;
	private String name;
	private String nickname;
	private LocalDate createDate;
	
	public MemberVO() {
	}
	
	public MemberVO(String id, String password, String name, String nickname, LocalDate createDate) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
		this.createDate = createDate;
	}
	
	public MemberVO(String id, String password) {
		this.id = id;
		this.password = password;
	}
	public MemberVO(String id, String password, String name, String nickname) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public LocalDate getCreateDate() {
		return createDate;
	}
	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", nickname=" + nickname
				+ ", createDate=" + createDate + "]";
	}
	
	
}
