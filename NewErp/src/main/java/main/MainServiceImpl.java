package main;

public class MainServiceImpl implements MainService {
	private MainDAO mainDAO;
	
	public void setMainDAO(MainDAO mainDAO) {
		this.mainDAO = mainDAO;
	}
	
	// 로그인
	@Override
	public MainVO loginCheck(MainVO vo) {
		return mainDAO.loginCheck(vo);
	}

	// 승인대기 회원 수
	@Override
	public int waitCnt(String user_id) {
		return mainDAO.waitCnt(user_id);
	}

	
}
