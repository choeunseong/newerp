package student;

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
	


	
}
