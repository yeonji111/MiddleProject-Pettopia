package contents;

public class TipVO {
	private int num;
	private String title;
	private String content;
	private String image;
	

	public TipVO(int num,String title, String content, String image) {
		this.num = num;
		this.title = title;
		this.content = content;
		this.image = image;
	}
	
	public TipVO(String title, String content, String image) {
		this.title = title;
		this.content = content;
		this.image = image;
	}

	public TipVO() {
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	
	
	
	
	
	
	
}
