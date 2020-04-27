package lesson;

public class LessonVO {
	
	private int ls_ref; 				// 수업 PK
	private String sub_ref;				// 강의과목코드
	private String ls_room;				// 강의실코드
	private String teacher;				// 강사ID
	private String student;				// 신청학생ID
	private String ls_nm;				// 수업명
	private String st_date;				// 수업시작일자
	private String ed_date;				// 수업종료일자
	private String st_time;				// 수업시작시간
	private String ed_time;				// 수업종료시간
	private String st_application;		// 수강신청시작일자
	private String ed_application;		// 수강신청종료일자
	private String student_cnt;			// 수강인원제한
	private String use_yn;				// 사용여부
	private String wrt_dtm;				// 등록일자
	private String ls_registrant;		// 강의 등록자
	
	public int getLs_ref() {
		return ls_ref;
	}
	public void setLs_ref(int ls_ref) {
		this.ls_ref = ls_ref;
	}
	public String getSub_ref() {
		return sub_ref;
	}
	public void setSub_ref(String sub_ref) {
		this.sub_ref = sub_ref;
	}
	public String getLs_room() {
		return ls_room;
	}
	public void setLs_room(String ls_room) {
		this.ls_room = ls_room;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getStudent() {
		return student;
	}
	public void setStudent(String student) {
		this.student = student;
	}
	public String getLs_nm() {
		return ls_nm;
	}
	public void setLs_nm(String ls_nm) {
		this.ls_nm = ls_nm;
	}
	public String getSt_date() {
		return st_date;
	}
	public void setSt_date(String st_date) {
		this.st_date = st_date;
	}
	public String getEd_date() {
		return ed_date;
	}
	public void setEd_date(String ed_date) {
		this.ed_date = ed_date;
	}
	public String getSt_time() {
		return st_time;
	}
	public void setSt_time(String st_time) {
		this.st_time = st_time;
	}
	public String getEd_time() {
		return ed_time;
	}
	public void setEd_time(String ed_time) {
		this.ed_time = ed_time;
	}
	public String getSt_application() {
		return st_application;
	}
	public void setSt_application(String st_application) {
		this.st_application = st_application;
	}
	public String getEd_application() {
		return ed_application;
	}
	public void setEd_application(String ed_application) {
		this.ed_application = ed_application;
	}
	public String getStudent_cnt() {
		return student_cnt;
	}
	public void setStudent_cnt(String student_cnt) {
		this.student_cnt = student_cnt;
	}
	public String getUse_yn() {
		return use_yn;
	}
	public void setUse_yn(String use_yn) {
		this.use_yn = use_yn;
	}
	public String getWrt_dtm() {
		return wrt_dtm;
	}
	public void setWrt_dtm(String wrt_dtm) {
		this.wrt_dtm = wrt_dtm;
	}
	public String getLs_registrant() {
		return ls_registrant;
	}
	public void setLs_registrant(String ls_registrant) {
		this.ls_registrant = ls_registrant;
	}

}

