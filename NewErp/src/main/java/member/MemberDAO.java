package member;

import java.util.List;

import comm.CommVO;

public interface MemberDAO {

	List<MemberVO> emplTabSearch(MemberVO vo);	// 직원목록 조회
	int emplCount(MemberVO vo);	// 직원목록조회 count

	List<CommVO> selectCompany();	// 본지사 조회

	int memberInsert(MemberVO vo);	// 회원가입하기

	int idCheck(MemberVO vo);	// ID 중복체크

	List<MemberVO> emplSearch(MemberVO vo);	// 담당자 검색

	List<CommVO> selectPart();	// 본지사 select box 조회
	
	int emplInsert(MemberVO vo);	// 직원정보저장
	
	int memberDel(MemberVO vo);	// 직원/강사 삭제
	int emplUpdate(MemberVO vo);	// 직원정보 수정
	
	List<MemberVO> teacherTabSearch(MemberVO vo);	// 강사목록 조회
	int teacherCount(MemberVO vo);	//강사목록조회 count
	
	int teacherUpdate(MemberVO vo);	// 강사정보 수정
	
	List<MemberVO> teacherLayerSearch(MemberVO memberVo);	// Layer 강사검색
	



	
}
