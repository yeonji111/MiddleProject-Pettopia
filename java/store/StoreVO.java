package store;

public class StoreVO {
	private String title;
	private String link;
	private String price;
	private String mainCategory;
	private String subCategory;
	private String image;
	
	public StoreVO() {
	}

	
	public StoreVO(String title, String link, String price, String mainCategory, String subCategory, String image) {
		this.title = title;
		this.link = link;
		this.price = price;
		this.mainCategory = mainCategory;
		this.subCategory = subCategory;
		this.image = image;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getLink() {
		return link;
	}


	public void setLink(String link) {
		this.link = link;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getMainCategory() {
		return mainCategory;
	}


	public void setMainCategory(String mainCategory) {
		this.mainCategory = mainCategory;
	}


	public String getSubCategory() {
		return subCategory;
	}


	public void setSubCategory(String subCategory) {
		this.subCategory = subCategory;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	@Override
	public String toString() {
		return "StoerVO [title=" + title + ", link=" + link + ", price=" + price + ", mainCategory=" + mainCategory
				+ ", subCategory=" + subCategory + ", image=" + image + "]";
	}
	
	
	
	
	
	
	
}
