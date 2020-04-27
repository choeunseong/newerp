package member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import comm.CommVO;

public class MemberDAOImpl implements MemberDAO {
	private SqlSession sqlSession;
	
	public MemberDAOImpl() {}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public MemberDAOImpl(SqlSession sqlSession) {
		super();
		sqlSession = sqlSession;
	}
	
	// 회원가입 화면 본지사 조회
	@Override
	public List<CommVO> selectCompany() {
		return sqlSession.selectList("member.selectCompany");
	}
	
	// 회원가입
	@Override
	public int memberInsert(MemberVO vo) {
		return sqlSession.insert("member.memberInsert", vo);
	}
	
	// 아이디 중복체크
	@Override
	public int idCheck(MemberVO vo) {
		return sqlSession.selectOne("member.idCheck", vo);
	}
	
	// 담당자 검색
	@Override
	public List<MemberVO> emplSearch(MemberVO vo) {
		return sqlSession.selectList("member.emplSearch", vo);
	}
	
	// 본지사 select box 조회
	@Override
	public List<CommVO> selectPart() {
		return sqlSession.selectList("member.selectCompany");
	}

	// 직원목록 조회
	@Override
	public List<MemberVO> emplTabSearch(MemberVO vo) {
		return sqlSession.selectList("member.emplTabSearch", vo);
	}
	
	// 직원목록조회 count
	@Override
	public int emplCount(MemberVO vo) {
		return sqlSession.selectOne("member.emplCount", vo);
	}
	
	// 직원정보저장
	@Override
	public int emplInsert(MemberVO vo) {
		return sqlSession.insert("member.emplInsert", vo);
	}
	
	// 직원/강사 삭제
	@Override
	public int memberDel(MemberVO vo) {
		return sqlSession.update("member.memberDel", vo);
	}
	
	// 직원정보 수정
	@Override
	public int emplUpdate(MemberVO vo) {
		return sqlSession.update("member.emplUpdate", vo);
	}
	
	// 강사목록 조회
	@Override
	public List<MemberVO> teacherTabSearch(MemberVO vo) {
		return sqlSession.selectList("member.teacherTabSearch", vo);
	}
	
	// 강사목록조회 count
	@Override
	public int teacherCount(MemberVO vo) {
		return sqlSession.selectOne("member.teacherCount", vo);
	}
	
	// 강사정보 수정
	@Override
	public int teacherUpdate(MemberVO vo) {
		return sqlSession.insert("member.teacherUpdate", vo);
	}

	// Layer 강사검색
	@Override
	public List<MemberVO> teacherLayerSearch(MemberVO memberVo) {
		return sqlSession.selectList("member.teacherLayerSearch", memberVo);
	}


	
}
