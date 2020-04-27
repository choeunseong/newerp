package lesson;

import org.apache.ibatis.session.SqlSession;

public class LessonDAOImpl implements LessonDAO {
	private SqlSession sqlSession;
	
	public LessonDAOImpl() {}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public LessonDAOImpl(SqlSession sqlSession) {
		super();
		sqlSession = sqlSession;
	}
	
	// 강의등록
	@Override
	public int lessonInsert(LessonVO lsVo) {
		return sqlSession.insert("lesson.lessonInsert", lsVo);
	}
	


	
}
