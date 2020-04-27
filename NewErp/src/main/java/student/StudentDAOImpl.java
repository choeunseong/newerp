package student;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class StudentDAOImpl implements StudentDAO {
	private SqlSession sqlSession;
	
	public StudentDAOImpl() {}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public StudentDAOImpl(SqlSession sqlSession) {
		super();
		sqlSession = sqlSession;
	}

	// 원생등록
	@Override
	public int stuInsert(StudentVO stuVO) {
		return sqlSession.insert("student.stuInsert", stuVO);
	}

	// 학생목록 리스트
	@Override
	public List<StudentVO> stuSearchList(StudentVO stuVo) {
		return sqlSession.selectList("student.stuSearchList", stuVo);
	}

	// 학생목록 리스트 cnt
	@Override
	public int stuSearchListCnt(StudentVO stuVo) {
		return sqlSession.selectOne("student.stuSearchListCnt", stuVo);
	}

	// 학생정보 수정
	@Override
	public int stuUpdate(StudentVO stuVO) {
		return sqlSession.update("student.stuUpdate", stuVO);
	}

	// 학생정보 삭제
	@Override
	public int stuDelete(StudentVO stuVo) {
		return sqlSession.update("student.stuDelete", stuVo);
	}
	


	
}
