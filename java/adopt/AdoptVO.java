package adopt;

import java.time.LocalDate;

public class AdoptVO {
	private int num;
	private String status;
	private String classification;
	private String species;
	private String age;
	private String gender;
	private String foundPlace;
	private String hairColor;
	private String memo;
	private String weight;
	private LocalDate rescueDate;
	private String fileName;
	private String filePath;
	private String formId;
	public AdoptVO() {
	}
	public AdoptVO(int num, String status, String classification, String species, String age, String gender,
			String foundPlace, String hairColor, String memo, String weight, LocalDate rescueDate, String fileName,
			String filePath) {
		this.num = num;
		this.status = status;
		this.classification = classification;
		this.species = species;
		this.age = age;
		this.gender = gender;
		this.foundPlace = foundPlace;
		this.hairColor = hairColor;
		this.memo = memo;
		this.weight = weight;
		this.rescueDate = rescueDate;
		this.fileName = fileName;
		this.filePath = filePath;
	}
	
	public AdoptVO(int num, String status) {
		this.num = num;
		this.status = status;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getClassification() {
		return classification;
	}
	public void setClassification(String classification) {
		this.classification = classification;
	}
	public String getSpecies() {
		return species;
	}
	public void setSpecies(String species) {
		this.species = species;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getFoundPlace() {
		return foundPlace;
	}
	public void setFoundPlace(String foundPlace) {
		this.foundPlace = foundPlace;
	}
	public String getHairColor() {
		return hairColor;
	}
	public void setHairColor(String hairColor) {
		this.hairColor = hairColor;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public LocalDate getRescueDate() {
		return rescueDate;
	}
	public void setRescueDate(LocalDate rescueDate) {
		this.rescueDate = rescueDate;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	@Override
	public String toString() {
		return "AdoptVO [num=" + num + ", status=" + status + ", classification=" + classification + ", species="
				+ species + ", age=" + age + ", gender=" + gender + ", foundPlace=" + foundPlace + ", hairColor="
				+ hairColor + ", memo=" + memo + ", weight=" + weight + ", rescueDate=" + rescueDate + ", fileName="
				+ fileName + ", filePath=" + filePath + "]";
	}
	
	
}
