package student;

import org.springframework.web.multipart.MultipartFile;

public class StudentVO {
	private int stu_idx;			// PK
	private String part;			// 본지사ref
	private String stu_empl;		// 담당직원id
	private String stu_nm;			// 학생이름
	private String stu_age;			// 학생나이
	private String stu_age_real;	// 학생나이
	private String stu_phone;		// 학생전화번호
	private String stu_email;		// 학생이메일
	private String stu_pict;		// 학생사진	
	private MultipartFile file_stu_pict; 	
	private String use_yn;			// 사용여부
	private String bigo;			// 비고
	private int startIndex = 1; 	// 페이징 시작 index(1페이지)
	private int currentPerPage; 	// 한 페이지에 보여질 게시물 갯수
	
	private String user_nm;			// 담당강사명
	private String cd_nm;			// 담당강사명
	
	
	public int getStu_idx() {
		return stu_idx;
	}
	public void setStu_idx(int stu_idx) {
		this.stu_idx = stu_idx;
	}
	public String getPart() {
		return part;
	}
	public void setPart(String part) {
		this.part = part;
	}
	public String getStu_empl() {
		return stu_empl;
	}
	public void setStu_empl(String stu_empl) {
		this.stu_empl = stu_empl;
	}
	public String getStu_nm() {
		return stu_nm;
	}
	public void setStu_nm(String stu_nm) {
		this.stu_nm = stu_nm;
	}
	public String getStu_age() {
		return stu_age;
	}
	public void setStu_age(String stu_age) {
		this.stu_age = stu_age;
	}
	public String getStu_phone() {
		return stu_phone;
	}
	public void setStu_phone(String stu_phone) {
		this.stu_phone = stu_phone;
	}
	public String getStu_email() {
		return stu_email;
	}
	public void setStu_email(String stu_email) {
		this.stu_email = stu_email;
	}
	public String getStu_pict() {
		return stu_pict;
	}
	public void setStu_pict(String stu_pict) {
		this.stu_pict = stu_pict;
	}
	public String getUse_yn() {
		return use_yn;
	}
	public void setUse_yn(String use_yn) {
		this.use_yn = use_yn;
	}
	public MultipartFile getFile_stu_pict() {
		return file_stu_pict;
	}
	public void setFile_stu_pict(MultipartFile file_stu_pict) {
		this.file_stu_pict = file_stu_pict;
	}
	public String getBigo() {
		return bigo;
	}
	public void setBigo(String bigo) {
		this.bigo = bigo;
	}
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	public int getCurrentPerPage() {
		return currentPerPage;
	}
	public void setCurrentPerPage(int currentPerPage) {
		this.currentPerPage = currentPerPage;
	}
	public String getUser_nm() {
		return user_nm;
	}
	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
	}
	public String getCd_nm() {
		return cd_nm;
	}
	public void setCd_nm(String cd_nm) {
		this.cd_nm = cd_nm;
	}
	public String getStu_age_real() {
		return stu_age_real;
	}
	public void setStu_age_real(String stu_age_real) {
		this.stu_age_real = stu_age_real;
	}
	
	
}

