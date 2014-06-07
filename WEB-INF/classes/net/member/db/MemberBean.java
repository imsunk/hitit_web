package net.member.db;

public class MemberBean {
	private String M_ID;
	private String M_PW;
	private String M_NAME;
	private String M_EMAIL;
	private String major;
	
	public String getM_ID() {
		return M_ID;
	}
	public void setM_ID(String member_id) {
		M_ID = member_id;
	}
	public String getM_PW() {
		return M_PW;
	}
	public void setM_PW(String member_pw) {
		M_PW = member_pw;
	}
	public String getM_NAME() {
		return M_NAME;
	}
	public void setM_NAME(String member_name) {
		M_NAME = member_name;
	}
	
	public void setMajor(String major){
		major = major;
	}
	
	public String getMajor(){
		return major;
	}

	public String getM_EMAIL() {
		return M_EMAIL;
	}
	public void setM_EMAIL(String member_email) {
		M_EMAIL = member_email;
	}
}
