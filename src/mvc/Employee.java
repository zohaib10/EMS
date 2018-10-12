package mvc;

public class Employee {
	int eid;
	String ename;
	String ecity;
	int esalary;
	
	public String display() {
		return "Employee ID: " + eid + "\t\t Employee Name: " + ename + "\t Employee City: " + ecity + "\t Employee Salary: " + esalary;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEcity() {
		return ecity;
	}
	public void setEcity(String ecity) {
		this.ecity = ecity;
	}
	public int getEsalary() {
		return esalary;
	}
	public void setEsalary(int esalary) {
		this.esalary = esalary;
	}

}
