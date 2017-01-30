package spring.mvc.uuplex.fitness.dto;

public class FClassroomDTO {

	private int shopcode; 
	private int crid;
	private String crname;
	private String activated;
	
	public int getShopcode() {
		return shopcode;
	}
	public void setShopcode(int shopcode) {
		this.shopcode = shopcode;
	}
	public int getCrid() {
		return crid;
	}
	public void setCrid(int crid) {
		this.crid = crid;
	}
	public String getCrname() {
		return crname;
	}
	public void setCrname(String crname) {
		this.crname = crname;
	}
	public String getActivated() {
		return activated;
	}
	public void setActivated(String activated) {
		this.activated = activated;
	}

}