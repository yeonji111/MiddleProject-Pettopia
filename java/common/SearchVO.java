
package common;

public class SearchVO {
	private String searchType;
	private String searchWord;
	private String category;
	private int firstRecordIndex;
	private int lastRecordIndex;
	public SearchVO() {
	}
	public SearchVO(String searchType, String searchWord) {
		this.searchType = searchType;
		this.searchWord = searchWord;
	}
	public String getSearchType() {
		return searchType;
	}
	public String getCategory() {
		return category;
	}
	
	
	public SearchVO(String searchType, String searchWord, String category) {
		this.searchType = searchType;
		this.searchWord = searchWord;
		this.category = category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	public int getFirstRecordIndex() {
		return firstRecordIndex;
	}
	public void setFirstRecordIndex(int firstRecordIndex) {
		this.firstRecordIndex = firstRecordIndex;
	}
	public int getLastRecordIndex() {
		return lastRecordIndex;
	}
	public void setLastRecordIndex(int lastRecordIndex) {
		this.lastRecordIndex = lastRecordIndex;
	}
	@Override
	public String toString() {
		return "SearchVO [searchType=" + searchType + ", searchWord=" + searchWord + ", firstRecordIndex="
				+ firstRecordIndex + ", lastRecordIndex=" + lastRecordIndex + "]";
	}
}
