package comm;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public class CommDAOImpl implements CommDAO {
	private SqlSession sqlSession;
	
	public CommDAOImpl() {}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public CommDAOImpl(SqlSession sqlSession) {
		super();
		sqlSession = sqlSession;
	}
	
	// 코드 조회
	@Override
	public List<CommVO> CodeSearch(CommVO vo) {
//		System.out.println("DAOicesys= "+vo.getSys_scd());
//		System.out.println("DAOcd= "+vo.getTp_cd());
//		System.out.println("DAOkey= "+vo.getSearchKeyword());
		return sqlSession.selectList("code.codeSearch", vo);
	}
	// 공통코드 count
	@Override
	public int codeCount(CommVO vo) {
		return sqlSession.selectOne("code.codeCnt", vo);
	}
	// 공통코드 저장
	@Override
	public int CodeInsert(CommVO vo) {
		return sqlSession.insert("code.codeInsert", vo);
	}
	// 공통코드 삭제
	@Override
	public int CodeDelete(CommVO vo) {
		return sqlSession.update("code.codeDelete", vo);
	}
	// 공통코드 수정
	@Override
	public int CodeUpdate(CommVO vo) {
		return sqlSession.update("code.codeUpdate", vo);
	}
	// 업무구분(comm_cmnsys)조회
	@Override
	public List<CommVO> taskList() {
		return sqlSession.selectList("code.taskList");
	}
	// 유형구분(comm_cmncgm)조회
	@Override
	public List<CommVO> TypeSearch(String cd_id) {
		return sqlSession.selectList("code.typeList", cd_id);
	}

	
	
	
	// 유형코드목록 조회
	@Override
	public List<CommVO2> codeSearch2(CommVO2 vo2) {
		return sqlSession.selectList("code.codeSearch2", vo2);
	}
	// 유형코드목록 count
	@Override
	public int codeCount2(CommVO2 vo2) {
		return sqlSession.selectOne("code.codeCnt2", vo2);
	}
	// 유형코드 저장
	@Override
	public int codeInsert2(CommVO2 vo2) {
		return sqlSession.insert("code.codeInsert2", vo2);
	}
	// 유형코드 삭제
	@Override
	public int codeDelete2(CommVO2 vo2) {
		return sqlSession.delete("code.codeDelete2", vo2);
	}
	// 유형코드 수정
	@Override
	public int codeUpdate2(CommVO2 vo2) {
		return sqlSession.update("code.codeUpdate2", vo2);
	}

	
}
