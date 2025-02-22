package mushtaq.entity;

import java.sql.Date;

public class Employee {
	private int employeeid;
	private String name;
	private Date birthday;
	private String  governmentid;
	private String phone;
	private String email;
	private String address;
	private String image;

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(int employeeid, String name, Date birthday, String governmentid, String phone, String email,
			String address, String image, Double salary) {
		super();
		this.employeeid = employeeid;
		this.name = name;
		this.birthday = birthday;
		this.governmentid = governmentid;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.image = image;
	}
	@Override
	public String toString() {
		return "Employee [employeeid=" + employeeid + ", name=" + name + ", birthday=" + birthday + ", governmentid="
				+ governmentid + ", phone=" + phone + ", email=" + email + ", address=" + address + ", image=" + image + "]";
	}
	public int getEmployeeid() {
		return employeeid;
	}
	public void setEmployeeid(int employeeid) {
		this.employeeid = employeeid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getGovernmentid() {
		return governmentid;
	}
	public void setGovernmentid(String governmentid) {
		this.governmentid = governmentid;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}

