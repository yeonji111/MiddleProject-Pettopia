package contents;

public class RecommendVO {
	private String name;
	private String color;
	private String weight;
	private String home;
	private String img;
	private String detail;
	
	public RecommendVO(String name, String color, String weight, String home, String img, String detail) {
		this.name = name;
		this.color = color;
		this.weight = weight;
		this.home = home;
		this.img = img;
		this.detail = detail;
	}

	public RecommendVO() {
	}

	
	
	public RecommendVO(String color, String weight, String home) {
		this.color = color;
		this.weight = weight;
		this.home = home;
	}

	@Override
	public String toString() {
		return "recommendVO [name=" + name + ", color=" + color + ", weight=" + weight + ", home=" + home + ", img="
				+ img + ", detail=" + detail + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getHome() {
		return home;
	}

	public void setHome(String home) {
		this.home = home;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	
	
	
	
}
