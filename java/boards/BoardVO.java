package boards;

import java.time.LocalDate;

public class BoardVO {
	private int num;
	private String id;
	private String title;
	private String content;
	private String nickname;
	private LocalDate createDate;

	// 기본 생성자
	public BoardVO() {
	}
	
	
	
	public BoardVO(int num) {
		this.num = num;
	}
	
	
	public BoardVO(String title, String content, int num) {
		this.title = title;
		this.content = content;
		this.num = num;
	}



	// list용 풀 생성자 (select)
	public BoardVO(int num, String id, String title, String content, LocalDate createDate) {
		this.num = num;
		this.id = id;
		this.title = title;
		this.content = content;
		this.createDate = createDate;
	}
	
	// insert용 생성자
	public BoardVO(String id, String title, String content) {
		this.id = id;
		this.title = title;
		this.content = content;
	}
	// update용 생성자
	public BoardVO(int num, String id, String title, String content) {
		this.num = num;
		this.id = id;
		this.title = title;
		this.content = content;
	}
	
	

	public BoardVO(int num, String id, String title, String content, String nickname, LocalDate createDate) {
		this.num = num;
		this.id = id;
		this.title = title;
		this.content = content;
		this.nickname = nickname;
		this.createDate = createDate;
	}

	


	public String getNickname() {
		return nickname;
	}



	public void setNickname(String nickname) {
		this.nickname = nickname;
	}



	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public LocalDate getCreateDate() {
		return createDate;
	}

	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}

	@Override
	public String toString() {
		return "BoardVO [num=" + num + ", id=" + id + ", title=" + title + ", content=" + content + ", createDate="
				+ createDate + "]";
	}
	
	
	
	
	
	
	
	
	
	
}
