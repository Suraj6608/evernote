package com.User;

public class admindetails {
	private int id;
	private String adminemail;
	private String adminpassword;
	
	public admindetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public admindetails(int id, String adminemail, String adminpassword) {
		super();
		this.id = id;
		this.adminemail = adminemail;
		this.adminpassword = adminpassword;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAdminemail() {
		return adminemail;
	}

	public void setAdminemail(String adminemail) {
		this.adminemail = adminemail;
	}

	public String getAdminpassword() {
		return adminpassword;
	}

	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}
	
	
}
