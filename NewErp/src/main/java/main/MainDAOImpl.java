package main;

import org.apache.ibatis.session.SqlSession;

public class MainDAOImpl implements MainDAO {
	private SqlSession sqlSession;
	
	public MainDAOImpl() {}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public MainDAOImpl(SqlSession sqlSession) {
		super();
		sqlSession = sqlSession;
	}
	
	// 로그인 id 체크
	@Override
	public MainVO loginCheck(MainVO vo) {
		return sqlSession.selectOne("loginCheck", vo);
	}

	// 승인대기 회원 수
	@Override
	public int waitCnt(String user_id) {
		return sqlSession.selectOne("main.waitCnt", user_id);
	}

	
}
