package member;

import java.util.List;

import comm.CommVO;

public class MemberServiceImpl implements MemberService {
	private MemberDAO memberDAO;

	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	
	// 회원가입화면 본지사 구분 조회 
	@Override
	public List<CommVO> selectCompany() {
		return memberDAO.selectCompany();
	}
	
	// 회원가입 하기
	@Override
	public int memberInsert(MemberVO vo) {
		
		return memberDAO.memberInsert(vo);
	}
	
	// 아이디 중복체크
	@Override
	public int idCheck(MemberVO vo) {
		return memberDAO.idCheck(vo);
	}
	
	// 담당자 검색
	@Override
	public List<MemberVO> emplSearch(MemberVO vo) {
		return memberDAO.emplSearch(vo);
	}
	
	// 본지사 select box 조회
	@Override
	public List<CommVO> selectPart() {
		return memberDAO.selectPart();
	}
	
	// 직원목록 조회
	@Override
	public List<MemberVO> emplTabSearch(MemberVO vo) {
		return memberDAO.emplTabSearch(vo);
	}
	
	// 직원목록조회 count
	@Override
	public int emplCount(MemberVO vo) {
		return memberDAO.emplCount(vo);
	}
	
	// 직원정보저장
	@Override
	public int emplInsert(MemberVO vo) {
		return memberDAO.emplInsert(vo);
	}
	
	// 직원/강사 정보 삭제
	@Override
	public int memberDel(MemberVO vo) {
		return memberDAO.memberDel(vo);
	}

	// 직원정보 수정
	@Override
	public int emplUpdate(MemberVO vo) {
		return memberDAO.emplUpdate(vo);
	}
	
	// 강사목록 조회
	@Override
	public List<MemberVO> teacherTabSearch(MemberVO vo) {
		return memberDAO.teacherTabSearch(vo);
	}
	
	// 강사목록조회 count
	@Override
	public int teacherCount(MemberVO vo) {
		return memberDAO.teacherCount(vo);
	}

	// 강사정보 수정
	@Override
	public int teacherUpdate(MemberVO vo) {
		return memberDAO.teacherUpdate(vo);
	}

	// Layer 강사검색
	@Override
	public List<MemberVO> teacherLayerSearch(MemberVO memberVo) {
		return memberDAO.teacherLayerSearch(memberVo);
	}
	
	
	
	
}
