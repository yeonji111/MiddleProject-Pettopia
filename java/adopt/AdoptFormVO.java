package adopt;

public class AdoptFormVO {
	private int formId;
	private int animalId;
	private String name;
	private String phone;
	private String address;
	private String live;
	private String family;
	private String experience1;
	private String experience2;
	private String state;
	private String filePath;
	public AdoptFormVO() {
	}
	public AdoptFormVO(int formId, int animalId, String name, String phone, String address, String live, String family,
			String experience1, String experience2) {
		this.formId = formId;
		this.animalId = animalId;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.live = live;
		this.family = family;
		this.experience1 = experience1;
		this.experience2 = experience2;
	}
	
	
	
	public AdoptFormVO(int formId, int animalId, String name, String phone, String address, String live, String family,
			String experience1, String experience2, String state, String filePath) {
		this.formId = formId;
		this.animalId = animalId;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.live = live;
		this.family = family;
		this.experience1 = experience1;
		this.experience2 = experience2;
		this.state = state;
		this.filePath = filePath;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public AdoptFormVO(int formId, int animalId, String name, String phone, String address, String live, String family,
			String experience1, String experience2, String filePath) {
		this.formId = formId;
		this.animalId = animalId;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.live = live;
		this.family = family;
		this.experience1 = experience1;
		this.experience2 = experience2;
		this.filePath = filePath;
	}
	
	
	public int getFormId() {
		return formId;
	}
	public AdoptFormVO(int animalId, String name, String phone, String address, String live, String family,
			String experience1, String experience2, String state, String filePath) {
		this.animalId = animalId;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.live = live;
		this.family = family;
		this.experience1 = experience1;
		this.experience2 = experience2;
		this.state = state;
		this.filePath = filePath;
	}
	
	public AdoptFormVO(int animalId, String name, String phone, String address, String live, String family,
			String experience1, String experience2) {
		this.animalId = animalId;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.live = live;
		this.family = family;
		this.experience1 = experience1;
		this.experience2 = experience2;
	}
	
	public AdoptFormVO(int formId, String state) {
		this.formId = formId;
		this.state = state;
	}
	public void setFormId(int formId) {
		this.formId = formId;
	}
	public int getAnimalId() {
		return animalId;
	}
	public void setAnimalId(int animalId) {
		this.animalId = animalId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLive() {
		return live;
	}
	public void setLive(String live) {
		this.live = live;
	}
	public String getFamily() {
		return family;
	}
	public void setFamily(String family) {
		this.family = family;
	}
	public String getExperience1() {
		return experience1;
	}
	public void setExperience1(String experience1) {
		this.experience1 = experience1;
	}
	public String getExperience2() {
		return experience2;
	}
	public void setExperience2(String experience2) {
		this.experience2 = experience2;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "AdoptFormVO [formId=" + formId + ", animalId=" + animalId + ", name=" + name + ", phone=" + phone
				+ ", address=" + address + ", live=" + live + ", family=" + family + ", experience1=" + experience1
				+ ", experience2=" + experience2 + ", state=" + state + ", filePath=" + filePath + "]";
	}
		
}
