package comm;

public class CommVO2 {
	private String sys_scd2;
	private String tp_cd2;
	private String tp_nm2;
	private String cd_nm2;
	private int sort_ord2;
	private String use_yn2;
	private String reg_mn_id2;
	private String reg_dtm2;
	private String lmnt_mn_id2;
	private String lmnt_dtm2;
	private String ref_item12;
	private String ref_item22;
	private String ref_item32;
	private String ref_item42;
	private String searchKeyword2;
	private int startIndex = 1; // 페이징 시작 index(1페이지)
	private int currentPerPage; // 한 페이지에 보여질 게시물 갯수
	
	public CommVO2() {}

	public CommVO2(String sys_scd2, String tp_cd2, String tp_nm2, String cd_nm2, int sort_ord2, String use_yn2, String reg_mn_id2,
			String reg_dtm2, String lmnt_mn_id2, String lmnt_dtm2, String ref_item12, String ref_item22,
			String ref_item32, String ref_item42, String searchKeyword2, int startIndex, int currentPerPage) {
		super();
		this.sys_scd2 = sys_scd2;
		this.tp_cd2 = tp_cd2;
		this.tp_nm2 = tp_nm2;
		this.sort_ord2 = sort_ord2;
		this.use_yn2 = use_yn2;
		this.reg_mn_id2 = reg_mn_id2;
		this.reg_dtm2 = reg_dtm2;
		this.lmnt_mn_id2 = lmnt_mn_id2;
		this.lmnt_dtm2 = lmnt_dtm2;
		this.ref_item12 = ref_item12;
		this.ref_item22 = ref_item22;
		this.ref_item32 = ref_item32;
		this.ref_item42 = ref_item42;
		this.searchKeyword2 = searchKeyword2;
		this.startIndex = startIndex;
		this.currentPerPage = currentPerPage;
	}

	public String getSys_scd2() {
		return sys_scd2;
	}

	public void setSys_scd2(String sys_scd2) {
		this.sys_scd2 = sys_scd2;
	}

	public String getTp_cd2() {
		return tp_cd2;
	}

	public void setTp_cd2(String tp_cd2) {
		this.tp_cd2 = tp_cd2;
	}

	public String getTp_nm2() {
		return tp_nm2;
	}

	public void setTp_nm2(String tp_nm2) {
		this.tp_nm2 = tp_nm2;
	}

	public int getSort_ord2() {
		return sort_ord2;
	}

	public void setSort_ord2(int sort_ord2) {
		this.sort_ord2 = sort_ord2;
	}

	public String getUse_yn2() {
		return use_yn2;
	}

	public void setUse_yn2(String use_yn2) {
		this.use_yn2 = use_yn2;
	}

	public String getReg_mn_id2() {
		return reg_mn_id2;
	}

	public void setReg_mn_id2(String reg_mn_id2) {
		this.reg_mn_id2 = reg_mn_id2;
	}

	public String getReg_dtm2() {
		return reg_dtm2;
	}

	public void setReg_dtm2(String reg_dtm2) {
		this.reg_dtm2 = reg_dtm2;
	}

	public String getLmnt_mn_id2() {
		return lmnt_mn_id2;
	}

	public void setLmnt_mn_id2(String lmnt_mn_id2) {
		this.lmnt_mn_id2 = lmnt_mn_id2;
	}

	public String getLmnt_dtm2() {
		return lmnt_dtm2;
	}

	public void setLmnt_dtm2(String lmnt_dtm2) {
		this.lmnt_dtm2 = lmnt_dtm2;
	}

	public String getRef_item12() {
		return ref_item12;
	}

	public void setRef_item12(String ref_item12) {
		this.ref_item12 = ref_item12;
	}

	public String getRef_item22() {
		return ref_item22;
	}

	public void setRef_item22(String ref_item22) {
		this.ref_item22 = ref_item22;
	}

	public String getRef_item32() {
		return ref_item32;
	}

	public void setRef_item32(String ref_item32) {
		this.ref_item32 = ref_item32;
	}

	public String getRef_item42() {
		return ref_item42;
	}

	public void setRef_item42(String ref_item42) {
		this.ref_item42 = ref_item42;
	}

	public String getSearchKeyword2() {
		return searchKeyword2;
	}

	public void setSearchKeyword2(String searchKeyword2) {
		this.searchKeyword2 = searchKeyword2;
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

	public String getCd_nm2() {
		return cd_nm2;
	}

	public void setCd_nm2(String cd_nm2) {
		this.cd_nm2 = cd_nm2;
	}

}
