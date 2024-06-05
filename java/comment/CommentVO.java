package comment;

import java.time.LocalDate;

public class CommentVO {
	private int commentNum;
	private int boardNum;
	private String id;
	private String nickname;
	private LocalDate commentDate;
	private String content;

	public CommentVO() {

	}


	// delete용
	public CommentVO(int boardNum, String content) {
		this.boardNum = boardNum;
		this.content = content;
	}
	
	// update용
	public CommentVO(String content, int commentNum) {
		this.content = content;
		this.commentNum = commentNum;
	}

	
	public CommentVO(int commentNum, LocalDate commentDate, String content) {
		this.commentNum = commentNum;
		this.commentDate = commentDate;
		this.content = content;
	}

	public CommentVO(int commentNum, int boardNum, String id, LocalDate commentDate, String content) {
		this.commentNum = commentNum;
		this.boardNum = boardNum;
		this.id = id;
		this.commentDate = commentDate;
		this.content = content;
	}

	
	public CommentVO(int boardNum, String id, String content) {
		this.boardNum = boardNum;
		this.id = id;
		this.content = content;
	}
	
	

	public CommentVO(int commentNum, int boardNum, String id, String nickname, LocalDate commentDate, String content) {
		this.commentNum = commentNum;
		this.boardNum = boardNum;
		this.id = id;
		this.nickname = nickname;
		this.commentDate = commentDate;
		this.content = content;
	}
	
	
	public String getNickname() {
		return nickname;
	}


	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	public int getCommentNum() {
		return commentNum;
	}

	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public LocalDate getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(LocalDate commentDate) {
		this.commentDate = commentDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "CommentVO [commentNum=" + commentNum + ", boardNum=" + boardNum + ", id=" + id + ", commentDate="
				+ commentDate + ", content=" + content + "]";
	}
	

}
