package comm;

public class CommVO {
	private String sys_scd;		// 대분류
	private String tp_cd;		// 중분류
	private String cd_id;		// 코드
	private String cd_nm;		// 명칭
	private String ref_val01;	// 추가값1
	private String ref_val02;	// 추가값2
	private String ref_val03;	// 추가값3
	private String ref_val04;	// 추가값4
	private int sort_ord;		// 게시순서
	private String use_yn;		// 사용여부
	private String reg_nm_id;	// 등록자 ID
	private String reg_dtm;		// 등록일
	private String lmnt_mn_id;	// 최종 수정자 ID
	private String lmnt_dtm;	// 최종 수정일
	private String tp_nm;		// 코드구분
	private String comm_ref;	// 업무구분코드
	private String comm_nm;		// 업무구분명
	private String searchKeyword; // 검색어
	private String code_name; // 공통코드관리의 코드이름
	private int startIndex = 1; // 페이징 시작 index(1페이지)
	private int currentPerPage; // 한 페이지에 보여질 게시물 갯수
	
	public CommVO() {}


	public CommVO(String sys_scd, String tp_cd, String cd_id, String cd_nm, String ref_val01, String ref_val02,
			String ref_val03, String ref_val04, int sort_ord, String use_yn, String reg_nm_id, String reg_dtm,
			String lmnt_mn_id, String lmnt_dtm, String tp_nm, String comm_ref, String comm_nm, String searchKeyword, int startIndex, int currentPerPage) {
		super();
		this.sys_scd = sys_scd;
		this.tp_cd = tp_cd;
		this.cd_id = cd_id;
		this.cd_nm = cd_nm;
		this.ref_val01 = ref_val01;
		this.ref_val02 = ref_val02;
		this.ref_val03 = ref_val03;
		this.ref_val04 = ref_val04;
		this.sort_ord = sort_ord;
		this.use_yn = use_yn;
		this.reg_nm_id = reg_nm_id;
		this.reg_dtm = reg_dtm;
		this.lmnt_mn_id = lmnt_mn_id;
		this.lmnt_dtm = lmnt_dtm;
		this.tp_nm = tp_nm;
		this.comm_ref = comm_ref;
		this.comm_nm = comm_nm;
		this.startIndex = startIndex;
		this.currentPerPage = currentPerPage;
	}


	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public String getSys_scd() {
		return sys_scd;
	}

	public void setSys_scd(String sys_scd) {
		this.sys_scd = sys_scd;
	}

	public String getTp_cd() {
		return tp_cd;
	}

	public void setTp_cd(String tp_cd) {
		this.tp_cd = tp_cd;
	}

	public String getCd_id() {
		return cd_id;
	}

	public void setCd_id(String cd_id) {
		this.cd_id = cd_id;
	}

	public String getCd_nm() {
		return cd_nm;
	}

	public void setCd_nm(String cd_nm) {
		this.cd_nm = cd_nm;
	}

	public String getRef_val01() {
		return ref_val01;
	}

	public void setRef_val01(String ref_val01) {
		this.ref_val01 = ref_val01;
	}

	public String getRef_val02() {
		return ref_val02;
	}

	public void setRef_val02(String ref_val02) {
		this.ref_val02 = ref_val02;
	}

	public String getRef_val03() {
		return ref_val03;
	}

	public void setRef_val03(String ref_val03) {
		this.ref_val03 = ref_val03;
	}

	public String getRef_val04() {
		return ref_val04;
	}

	public void setRef_val04(String ref_val04) {
		this.ref_val04 = ref_val04;
	}

	public int getSort_ord() {
		return sort_ord;
	}

	public void setSort_ord(int sort_ord) {
		this.sort_ord = sort_ord;
	}

	public String getUse_yn() {
		return use_yn;
	}

	public void setUse_yn(String use_yn) {
		this.use_yn = use_yn;
	}

	public String getReg_nm_id() {
		return reg_nm_id;
	}

	public void setReg_nm_id(String reg_nm_id) {
		this.reg_nm_id = reg_nm_id;
	}

	public String getReg_dtm() {
		return reg_dtm;
	}

	public void setReg_dtm(String reg_dtm) {
		this.reg_dtm = reg_dtm;
	}

	public String getLmnt_mn_id() {
		return lmnt_mn_id;
	}

	public void setLmnt_mn_id(String lmnt_mn_id) {
		this.lmnt_mn_id = lmnt_mn_id;
	}

	public String getLmnt_dtm() {
		return lmnt_dtm;
	}

	public void setLmnt_dtm(String lmnt_dtm) {
		this.lmnt_dtm = lmnt_dtm;
	}

	public String getTp_nm() {
		return tp_nm;
	}

	public void setTp_nm(String tp_nm) {
		this.tp_nm = tp_nm;
	}

	public String getComm_ref() {
		return comm_ref;
	}

	public void setComm_ref(String comm_ref) {
		this.comm_ref = comm_ref;
	}

	public String getComm_nm() {
		return comm_nm;
	}

	public void setComm_nm(String comm_nm) {
		this.comm_nm = comm_nm;
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


	public String getCode_name() {
		return code_name;
	}


	public void setCode_name(String code_name) {
		this.code_name = code_name;
	}
	
	
}
