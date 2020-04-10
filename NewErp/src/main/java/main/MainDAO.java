package main;

public interface MainDAO {

	MainVO loginCheck(MainVO vo);

	int waitCnt(String user_id);	// 승인대기 회원 수
	
}
