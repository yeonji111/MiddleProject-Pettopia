package photoBoard;

import java.time.LocalDate;

public class PhotoBoardVO {
	private int num;
	private String id;
	private String title;
	private String content;
	private String nickname;
	private LocalDate createDate;
	private String filepath;
	
	public PhotoBoardVO() {
	}
	
	

	public PhotoBoardVO(int num, String id, String title, String content, String nickname, LocalDate createDate,
			String filepath) {
		this.num = num;
		this.id = id;
		this.title = title;
		this.content = content;
		this.nickname = nickname;
		this.createDate = createDate;
		this.filepath = filepath;
	}



	public PhotoBoardVO(int num, String id, String title, String content, LocalDate createDate, String filepath) {
		this.num = num;
		this.id = id;
		this.title = title;
		this.content = content;
		this.createDate = createDate;
		this.filepath = filepath;
	}

	public PhotoBoardVO(String id, String title, String content, LocalDate createDate, String filepath) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.createDate = createDate;
		this.filepath = filepath;
	}
	

	public PhotoBoardVO(String id, String title, String content, String filepath) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.filepath = filepath;
	}
	

	public PhotoBoardVO(String title, String content, String filepath) {
		this.title = title;
		this.content = content;
		this.filepath = filepath;
	}

	public PhotoBoardVO(int num, String title, String content, String filepath) {
		this.num = num;
		this.title = title;
		this.content = content;
		this.filepath = filepath;
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

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	@Override
	public String toString() {
		return "PhotoBoardVO [num=" + num + ", id=" + id + ", title=" + title + ", content=" + content + ", createDate="
				+ createDate + ", filepath=" + filepath + "]";
	}
	

	
	
	
}
