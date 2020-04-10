package member;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {
	private String user_id;					// 사용자 ID
	private String user_grp;				// 사용자 그룹(A-직원,B-강사,C-학생)
	private String use_yn;					// 사용여부
	private String user_permit;				// 회원승인여부(A-인증,B-대기,C-거부)
	private String user_pw;					// 비밀번호
	private String user_nm;					// 사용자명
	private String user_age;				// 사용자 생년월일
	private String user_email;				// 사용자 이메일
	private String user_phone;				// 사용자 전화번호
	private String reg_dtm;					// 등록일
	private String part;					// 본지사
	private String part_nm;					// 본지사
	private String user_file;				// 첨부파일
	private String user_pict;				// 사용자 사진
	private MultipartFile file_user_file; 	
	private MultipartFile file_user_pict; 	
	private String user_empl;				// 담당자ID(강사일때)
	private String partSearch;				// 검색어
	private String searchKeyWord;				// 검색어
	private int startIndex = 1; // 페이징 시작 index(1페이지)
	private int currentPerPage; // 한 페이지에 보여질 게시물 갯수
	
	public MemberVO() {}

	public MemberVO(String user_id, String user_grp, String use_yn, String user_permit, String user_pw, String user_nm,
			String user_age, String user_email, String user_phone, String reg_dtm, String part, String part_nm,
			String user_file, String user_pict, MultipartFile file_user_file, MultipartFile file_user_pict,
			String user_empl, String partSearch, String searchKeyWord, int startIndex, int currentPerPage) {
		super();
		this.user_id = user_id;
		this.user_grp = user_grp;
		this.use_yn = use_yn;
		this.user_permit = user_permit;
		this.user_pw = user_pw;
		this.user_nm = user_nm;
		this.user_age = user_age;
		this.user_email = user_email;
		this.user_phone = user_phone;
		this.reg_dtm = reg_dtm;
		this.part = part;
		this.part_nm = part_nm;
		this.user_file = user_file;
		this.user_pict = user_pict;
		this.file_user_file = file_user_file;
		this.file_user_pict = file_user_pict;
		this.user_empl = user_empl;
		this.partSearch = partSearch;
		this.searchKeyWord = searchKeyWord;
		this.startIndex = startIndex;
		this.currentPerPage = currentPerPage;
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

	public String getUser_age() {
		return user_age;
	}

	public void setUser_age(String user_age) {
		this.user_age = user_age;
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

	public String getUser_file() {
		return user_file;
	}

	public void setUser_file(String user_file) {
		this.user_file = user_file;
	}

	public String getUser_pict() {
		return user_pict;
	}

	public void setUser_pict(String user_pict) {
		this.user_pict = user_pict;
	}

	public MultipartFile getFile_user_file() {
		return file_user_file;
	}

	public void setFile_user_file(MultipartFile file_user_file) {
		this.file_user_file = file_user_file;
	}

	public MultipartFile getFile_user_pict() {
		return file_user_pict;
	}

	public void setFile_user_pict(MultipartFile file_user_pict) {
		this.file_user_pict = file_user_pict;
	}

	public String getUser_empl() {
		return user_empl;
	}

	public void setUser_empl(String user_empl) {
		this.user_empl = user_empl;
	}

	public String getPart() {
		return part;
	}

	public void setPart(String part) {
		this.part = part;
	}

	public String getSearchKeyWord() {
		return searchKeyWord;
	}

	public void setSearchKeyWord(String searchKeyWord) {
		this.searchKeyWord = searchKeyWord;
	}

	public String getPart_nm() {
		return part_nm;
	}

	public void setPart_nm(String part_nm) {
		this.part_nm = part_nm;
	}

	public String getPartSearch() {
		return partSearch;
	}

	public void setPartSearch(String partSearch) {
		this.partSearch = partSearch;
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


	
}

