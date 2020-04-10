package main;

public class MainVO {
	private String user_id;
	private String user_grp;
	private String use_yn;
	private String user_permit;
	private String user_pw;
	private String user_nm;
	private String user_email;
	private String user_phone;
	private String reg_dtm;
	private String part;
	
	public MainVO() {}

	public MainVO(String user_id, String user_grp, String use_yn, String user_permit, String user_pw, String user_nm,
			String user_email, String user_phone, String reg_dtm, String part) {
		super();
		this.user_id = user_id;
		this.user_grp = user_grp;
		this.use_yn = use_yn;
		this.user_permit = user_permit;
		this.user_pw = user_pw;
		this.user_nm = user_nm;
		this.user_email = user_email;
		this.user_phone = user_phone;
		this.reg_dtm = reg_dtm;
		this.part = part;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_grp() {
		return user_grp;
	}

	public void setUser_grp(String user_grp) {
		this.user_grp = user_grp;
	}

	public String getUse_yn() {
		return use_yn;
	}

	public void setUse_yn(String use_yn) {
		this.use_yn = use_yn;
	}

	public String getUser_permit() {
		return user_permit;
	}

	public void setUser_permit(String user_permit) {
		this.user_permit = user_permit;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_nm() {
		return user_nm;
	}

	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getReg_dtm() {
		return reg_dtm;
	}

	public void setReg_dtm(String reg_dtm) {
		this.reg_dtm = reg_dtm;
	}

	public String getPart() {
		return part;
	}

	public void setPart(String part) {
		this.part = part;
	}
	
	
}
